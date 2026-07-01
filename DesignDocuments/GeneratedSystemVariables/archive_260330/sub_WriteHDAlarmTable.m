function AlHDTableNew = sub_WriteHDAlarmTable(IOTable, AlPathName, AlFileName, NewAlFileName, AlSheet, UnitTag)
% AlSheet = 'Common.HD';
% UnitTag = "COM_";

DescriptionPrefix = AlSheet(1:end-3);

FileOpt = detectImportOptions([AlPathName, AlFileName], 'Sheet', AlSheet);
FileOpt.VariableNamesRange = 'A1';
AlVariableTypes = readcell([AlPathName, AlFileName], 'Sheet', AlSheet,'Range','A2:P2');
FileOpt.VariableTypes = AlVariableTypes;
FileOpt.DataRange = 'A3';

TempTable = readtable([AlPathName, AlFileName], FileOpt);
lTable = size(TempTable,1);
missing_flag = 0;
for ioil = 1:lTable
    if ismissing(TempTable(ioil, 1))
        missing_flag = 1;
        break
    end
end
AlHDTableLength = ioil - missing_flag;
AlHDTable = TempTable(1:AlHDTableLength,:);

%% Generate New Alarm Table
% New Alarm Table Langth = Module Alarm + DI Alarm + AI Alarm
Modules = unique(IOTable.Module);
NumModule = numel(unique(Modules));

h = histogram(IOTable.CAT4);
NumDICh = h.Values(find(contains(h.Categories, 'DI')));
NumAICh = h.Values(find(contains(h.Categories, 'AI')));

close(gcf)

AlHDTableNewLength = NumModule + NumDICh*2 + NumAICh*5;  % 2 Types of DI Alarm(DH, DL) / 5 Types of AI Alarm(SF, HH, HO, LO, LL)

AlVariableNames = FileOpt.VariableNames;
AlHDTableNew = table('Size', [AlHDTableNewLength 16],'VariableTypes',AlVariableTypes,'VariableNames',AlVariableNames);

%% Wrtie Module Alarm
for k = 1:NumModule
    AlTag = UnitTag + Modules(k) + "_MF";
    oldidx = find(contains(AlHDTable.AlarmTag,AlTag));
    AlHDTableNew.IDX(k) = k - 1;
    
    if ~ isempty(oldidx)
        AlHDTableNew(k,2:end) = AlHDTable(oldidx,2:end);
    else
        AlHDTableNew.AlarmTag(k) = AlTag;
        AlHDTableNew.Enable(k) = "O";
        AlHDTableNew.HWTag(k) = Modules(k);
        s_end = strlength(Modules(k));
        AlHDTableNew.Message(k) = DescriptionPrefix + " " + extractBetween(Modules(k), s_end-2, s_end) + " Module Fault";
        AlHDTableNew.Min(k) = 0;
        AlHDTableNew.Max(k) = 1;
        AlHDTableNew.Unit(k) = "-";
        AlHDTableNew.Threshold(k) = 1;
        AlHDTableNew.Delay(k) = "0.1";
        AlHDTableNew.NotReady(k) = "X";
        AlHDTableNew.Action(k) = "";
        AlHDTableNew.AlarmState(k) = "All";
        AlHDTableNew.ResetButton(k) = "X";
        AlHDTableNew.AlarmResetCondition(k) = "";
    end
end

%% Write DI Alarm
DITable = IOTable(contains(IOTable.Module,"DI"),:);

for l = 1:NumDICh
    % Alarm Tag
    AlTag = "";
    if ismissing(DITable.TagNo(l))
        IOTag = DITable.Module(l) + "CH" + DITable.CH(l);
    else
        IOTag = DITable.TagNo(l);
    end
    AlTag(1) = UnitTag + IOTag + "_DH";
    AlTag(2) = UnitTag + IOTag + "_DL";

    % Alarm Type: 
    AlEn = "";
    if DITable.Al_Low(l) == "0"
        AlEn(1) = "X";   % DH
        AlEn(2) = "O";  % DL
    elseif DITable.Al_High(l) == "1"
        AlEn(1) = "O";  % DH
        AlEn(2) = "X";   % DL
    else
        AlEn(1) = "X";   % DH
        AlEn(2) = "X";   % DL
    end

    % Alarm Descrption
    if ismissing(DITable.Description(l))
        DITable.Description(l) = extractAfter(DITable.Module(l), 2) + " Reserved" + DITable.CH(l);
    end
    
    % Alarm Remark
    if DITable.Remark(l) == ""
        AlMsg(1) = "High";
        AlMsg(2) = "Low";
    else
        AlRemark = extractAfter(DITable.Remark(l), 1);
        if extractBefore(DITable.Remark(l), 2) == "1"
            AlMsg(1) = "High" + "(High" +  AlRemark + ")";
            AlMsg(2) = "Low" + "(High" +  AlRemark + ")";
        elseif extractBefore(DITable.Remark(l), 2) == "0"
            AlMsg(1) = "High" + "(Low" +  AlRemark + ")";
            AlMsg(2) = "Low" + "(Low" +  AlRemark + ")";
        end
    end
    
    % m = 1: DH Alarm, m=2: DL Alarm
    for m = 1:2
        k = k + 1;
        oldidx = find(contains(AlHDTable.AlarmTag, AlTag(m)));
        AlHDTableNew.IDX(k) = k - 1;
    
        if ~ isempty(oldidx)
            AlHDTableNew(k,2:end) = AlHDTable(oldidx,2:end);
            AlHDTableNew.Enable(k) = AlEn(m);

        else
            AlHDTableNew.AlarmTag(k) = AlTag(m);
            AlHDTableNew.Enable(k) = AlEn(m);
            AlHDTableNew.HWTag(k) = DITable.TagNo(l);
            AlHDTableNew.Message(k) = DITable.Description(l) + " " + AlMsg(m);
            AlHDTableNew.Min(k) = 0;
            AlHDTableNew.Max(k) = 1;
            AlHDTableNew.Unit(k) = "-";
            if m == 1       % DH
                AlHDTableNew.Threshold(k) = 1;
            elseif  m == 2  % DL
                AlHDTableNew.Threshold(k) = 0;
            end
            if ismissing(DITable.Delay(l))
                AlHDTableNew.Delay(k) = 0.1;
            else
                AlHDTableNew.Delay(k) = DITable.Delay(l);
            end
            AlHDTableNew.NotReady(k) = "";
            AlHDTableNew.Action(k) = "";
            AlHDTableNew.AlarmState(k) = "All";
            AlHDTableNew.ResetButton(k) = "";
            AlHDTableNew.AlarmResetCondition(k) = "";
        end
    end
end
clear AlTag AlEn AlMsg

%% Write AI Alarm
AlEnMark(1) = "O";
AlEnMark(2) = "";

AlMsg(1) = " S/F";
AlMsg(2) = " Low-Low";
AlMsg(3) = " Low";
AlMsg(4) = " High";
AlMsg(5) = " High-High";
AITable = IOTable(contains(IOTable.Module,"AI"),:);
for l = 1:NumAICh
    AlTag = "";
    if ismissing(AITable.TagNo(l))
        IOTag = AITable.Module(l) + "CH" + AITable.CH(l);
    else
        IOTag = AITable.TagNo(l);
    end
    AlTag(1) = UnitTag + IOTag + "_SF";
    AlTag(2) = UnitTag + IOTag + "_LL";
    AlTag(3) = UnitTag + IOTag + "_LO";
    AlTag(4) = UnitTag + IOTag + "_HO";
    AlTag(5) = UnitTag + IOTag + "_HH";

    % Alarm Type
    AlEn(1) = boolean(0);
    AlEn(2) = ismissing(AITable.Al_LowLow(l));
    AlEn(3) = ismissing(AITable.Al_Low(l));
    AlEn(4) = ismissing(AITable.Al_High(l));
    AlEn(5) = ismissing(AITable.Al_HighHigh(l));
    AlEn = AlEn + 1;    % 1: Enable, 2: Disable

    % Alarm Descrption
    if ismissing(AITable.Description(l))
        AITable.Description(l) = extractAfter(AITable.Module(l),2 ) + " Reserved" + AITable.CH(l);
    end
    
    % Alarm Threshold
    AlThr(1) = "";
    AlThr(2) = AITable.Al_LowLow(l);
    AlThr(3) = AITable.Al_Low(l);
    AlThr(4) = AITable.Al_High(l);
    AlThr(5) = AITable.Al_HighHigh(l);
    for m = 1:5
        k = k + 1;
        oldidx = find(contains(AlHDTable.AlarmTag, AlTag(m)));
        AlHDTableNew.IDX(k) = k - 1;
        if ~ isempty(oldidx)
            AlHDTableNew(k,2:end) = AlHDTable(oldidx,2:end);
        else
            AlHDTableNew.AlarmTag(k)     = AlTag(m);
            AlHDTableNew.Enable(k)       = AlEnMark(AlEn(m));    % 1: Enable -> "O", 2: Disable -> "X"
            AlHDTableNew.HWTag(k)        = AITable.TagNo(l);
            AlHDTableNew.Message(k)      = AITable.Description(l) + AlMsg(m);
            if ismissing(AITable.TagNo(l))
                AlHDTableNew.Enable(k)       = "X";
                AlHDTableNew.Min(k)          = 0;
                AlHDTableNew.Max(k)          = 1;
                AlHDTableNew.Unit(k)         = "-";
                AlHDTableNew.AlarmState(k)   = "";
            else
                AlHDTableNew.Min(k)          = AITable.Min(l);
                AlHDTableNew.Max(k)          = AITable.Max(l);
                AlHDTableNew.Unit(k)         = AITable.Unit(l);
            end
            if ~ismissing(AlThr(m))    % Alarm Thrshold 
                AlHDTableNew.Threshold(k)    = AlThr(m);
                AlHDTableNew.Delay(k)        = AITable.Delay(l);
            else
                AlHDTableNew.Threshold(k)    = "0";
                AlHDTableNew.Delay(k)        = 1;
            end
            AlHDTableNew.NotReady(k) = "";
            AlHDTableNew.Action(k) = "";
            AlHDTableNew.AlarmState(k) = "All";
            AlHDTableNew.ResetButton(k) = "";
            AlHDTableNew.AlarmResetCondition(k) = "";
            if m == 1   % Sensor Fault Alarm
                AlHDTableNew.Remark(k) = "S/F: below 3.2mA, above 20.8mA";
            end
        end
    end
end
%%
writetable(AlHDTableNew, [AlPathName, NewAlFileName], 'Sheet', AlSheet, 'Range', 'A3', 'WriteVariableNames', false)
disp(['HD Alarm has been written in "', AlPathName, NewAlFileName, ', Sheet:', AlSheet, '"'])
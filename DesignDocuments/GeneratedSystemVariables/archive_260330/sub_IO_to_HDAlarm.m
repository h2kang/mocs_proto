
NewAlFileName = AlFileName;
NewAlFileName(end-5) = num2str(str2double(NewAlFileName(end-5)) + 1);
copyfile([AlPathName, AlFileName], [AlPathName, NewAlFileName])

%%
AlSheet = 'Common.HD';
UnitTag = "COM_";
AlComHDTableNew = sub_WriteHDAlarmTable(table_CIO, AlPathName, AlFileName, NewAlFileName, AlSheet, UnitTag);

%% Compare
disp('Compare Common.HD Alarm')
table_AlCHD_old = string(readcell(AlFileName, 'Sheet', AlSheet));
table_AlCHD_old(ismissing(table_AlCHD_old)) = "";

table_AlCHD_new = string(readcell(NewAlFileName, 'Sheet', AlSheet));
table_AlCHD_new(ismissing(table_AlCHD_new)) = "";

diffMask = ~strcmp(table_AlCHD_old, table_AlCHD_new);
[row, col] = find(diffMask);
for k = 1:length(row)
    disp(string(row(k)) + ", " + string(col(k)) + ": """ + table_AlCHD_old(row(k), col(k)) + """ to """ + table_AlCHD_new(row(k), col(k)) + """")
end

%%

AlSheet = 'No#.HD';
UnitTag = "No#_";
AlNoxHDTableNew = sub_WriteHDAlarmTable(table_IIO, AlPathName, AlFileName, NewAlFileName, AlSheet, UnitTag);

%% Compare
disp('Compare No#.HD Alarm')
table_AlIHD_old = string(readcell(AlFileName, 'Sheet', AlSheet));
table_AlIHD_old(ismissing(table_AlIHD_old)) = "";

table_AlIHD_new = string(readcell(NewAlFileName, 'Sheet', AlSheet));
table_AlIHD_new(ismissing(table_AlIHD_new)) = "";

diffMask = ~strcmp(table_AlIHD_old, table_AlIHD_new);
[row, col] = find(diffMask);
for k = 1:length(row)
    disp(string(row(k)) + ", " + string(col(k)) + ": """ + table_AlIHD_old(row(k), col(k)) + """ to """ + table_AlIHD_new(row(k), col(k)) + """")
end

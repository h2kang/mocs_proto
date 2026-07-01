function sub_WriteAlarmCat3typ(fid, table_Al)
VarClass = 'BOOL';
lnt = length(table_Al.IDX);
for k = 1:lnt
    Alarm_init = char(table_Al.Message(k));
    if contains(Alarm_init, 'Reserved')
        Alarm_init = Alarm_init(2:end);
    end
    Alarm_init = replace(Alarm_init, 'No.# Remote Stop command Input while TMB State(except TMB Engage)', ...
        'RemoteStopWhileTMB');
    old_str = {'No.#',  'F.O. Supply pump', 'Fuel Oil', 'G/E',  'Atomizing Air','F.O. Dosing',  'From', 'Venting & Sealing','Engine',   'operation','Deviation','Saturation',   'Sealing required'};
    new_str = {'',      'FOpump',           'FO',       '',     'Air',          'FODos',        'F',    'VnS',              'EG',       '',         'Dev',      'Sat',          ''};
    Alarm_init = replace(Alarm_init, old_str, new_str);

    % Alarm = replace(Alarm, 'No# ', '');
    ln_AlTag = strlength(table_Al.AlarmTag(k));
    Alarm_type = extractAfter(table_Al.AlarmTag(k), ln_AlTag-2);
    switch Alarm_type
        case "MF"
            gen_typ = 1;
            Alarm = regexprep(Alarm_init, '[^a-zA-Z0-9]', '');
            Var_typ = VarClass;
        case "DH"
            gen_typ = 1;
            DAlarm_split = regexp(Alarm_init, '(', 'split');
            DAlarm_conditions = regexp(DAlarm_split{end}(1:end-1), '=', 'split');
            DAlarm_condition = [DAlarm_conditions{1}(1), DAlarm_conditions{2}(1)];
            Alarm_init = replace(DAlarm_split{1}, 'High', '');
            Alarm = [regexprep(Alarm_init, '[^a-zA-Z0-9]', ''), '_', DAlarm_condition];
            Var_typ = 'DIAlarm_typ';
        case "DL"
            gen_typ = 0;
        case "SF"
            gen_typ = 1;
            Alarm_init = replace(Alarm_init, 'S/F', '');
            Alarm = regexprep(Alarm_init, '[^a-zA-Z0-9]', '');
            Var_typ = 'AIAlarm_typ';
        case {"LL", "LO", "HO", "HH"}
            gen_typ = 0;
        otherwise
            gen_typ = 1;
            Alarm = regexprep(Alarm_init, '[^a-zA-Z0-9]', '');
            Var_typ = VarClass;
    end
    while 1
        if length(Alarm) >= 25
            disp(char(table_Al.Message(k)))
            disp(Alarm)
            disp('Varible Name must be 25 characters or fewer.')
            Alarm = input('Input new Variable name: ', 's');
        else
            break
        end
    end
    if gen_typ == 1
        CAT3VN{1}{k} = Alarm;
        fprintf(fid, '\t\t'); fprintf(fid, [CAT3VN{1}{k}, ' : ', Var_typ, ';\n']);
    end
end
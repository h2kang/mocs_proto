ALtyp_file_check = dir([target_path, '\**\', out_Alarmtyp_file]);

if ~isempty(ALtyp_file_check)
    disp([ALtyp_file_check.name, ' has been found.'])
    if exist([target_path, out_Alarmtyp_file, 'old'])
        delete([target_path, out_Alarmtyp_file, 'old'])
        disp(['Delete the existing ',  out_Alarmtyp_file, 'old file and rename ', out_Alarmtyp_file, ' to ', out_Alarmtyp_file, 'old . '])
    end
    copyfile([target_path, out_Alarmtyp_file], [target_path, out_Alarmtyp_file, 'old'])
    disp(['Rename ', out_Alarmtyp_file, ' to ', out_Alarmtyp_file, 'old . '])
end

%% Alarm typ
ALcat1 = 'Alarm_typ';
ALcat2 = {'CommAlarm_typ','IndivAlarm_typ'};

ALcat3{1} = {'CHD', 'CUD'};
ALcat3{2} = {'IHD', 'IUD'};
ALcat3_ln = [length(ALcat3{1}),length(ALcat3{2})];

ALcat3_table{1} = {table_AlCHD, table_AlCUD};
ALcat3_table{2} = {table_AlIHD, table_AlIUD};

ALcat4 = {'AIAlarm' ,'DIAlarm'};
ALcat4_ln = length(ALcat4);
ALcat4VN{1} = {'SF', 'LL', 'LO', 'HO', 'HH'};
ALcat4VN{2} = {'DH', 'DL'};
ALcat4VN_ln = [length(ALcat4VN{1}),length(ALcat4VN{2})];

VarClass = 'BOOL';

%%
fid = fopen([target_path, out_Alarmtyp_file], 'w');

% print Category1 typ
fprintf(fid, '(*---Category1---*)\n\n');
fprintf(fid, 'TYPE\n');
fprintf(fid, '\t'); fprintf(fid, [ALcat1, ' :\tSTRUCT\n']);
fprintf(fid, '\t\t'); fprintf(fid, ['Comm : ', ALcat2{1}, ';\n']);
for k = 1:8
    fprintf(fid, '\t\t'); fprintf(fid, ['No', num2str(k), ' : ', ALcat2{2}, ';\n']);
end
fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
fprintf(fid, 'END_TYPE\n\n');

% print Category2 typ
fprintf(fid, '(*---Category2---*)\n\n');
fprintf(fid, 'TYPE\n');
for k = 1:2
    fprintf(fid, '\t'); fprintf(fid, [ALcat2{k}, ' :\tSTRUCT\n']);
    for m = 1:ALcat3_ln(k)
        fprintf(fid, '\t\t'); fprintf(fid, [ALcat3{k}{m}, ' : ', ALcat3{k}{m}, '_typ;\n']);
    end
    fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
end
fprintf(fid, 'END_TYPE\n\n');

% print Category3 typ
fprintf(fid, '(*---Category3---*)\n\n');
fprintf(fid, 'TYPE\n');
for m = 1:length(ALcat3_ln)
    for n = 1:ALcat3_ln(m)
        fprintf(fid, '\t'); fprintf(fid, [ALcat3{m}{n}, '_typ :\tSTRUCT\n']);
        sub_WriteAlarmCat3typ(fid, ALcat3_table{m}{n})
        fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
    end
end
fprintf(fid, 'END_TYPE\n\n');

% print Category4 typ
fprintf(fid, '(*---Category3---*)\n\n');
fprintf(fid, 'TYPE\n');
for m = 1:ALcat4_ln
    fprintf(fid, '\t'); fprintf(fid, [ALcat4{m}, '_typ :\tSTRUCT\n']);
    for n = 1:ALcat4VN_ln(m)
        fprintf(fid, '\t\t'); fprintf(fid, [ALcat4VN{m}{n}, ' : ', VarClass, ';\n']);
    end
    fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
end

fprintf(fid, 'END_TYPE\n\n');

fclose all;

%% 

disp(['MOCS Alarm structures has been written in "', target_path, out_Alarmtyp_file, '"'])
if exist([target_path, out_Alarmtyp_file, 'old'])
    visdiff(out_Alarmtyp_file, [out_Alarmtyp_file, 'old'])
end
IOtyp_file_check = dir([target_path, '\**\', out_IOtyp_file]);

if ~isempty(IOtyp_file_check)
    disp([IOtyp_file_check.name, ' has been found.'])
    if exist([target_path, out_IOtyp_file, 'old'])
        delete([target_path, out_IOtyp_file, 'old'])
        disp(['Delete the existing ',  out_IOtyp_file, 'old file and rename ', out_Alarmtyp_file, ' to ', out_Alarmtyp_file, 'old . '])
    end
    copyfile([target_path, out_IOtyp_file], [target_path, out_IOtyp_file, 'old'])
    disp(['Rename ', out_IOtyp_file, ' to ', out_IOtyp_file, 'old . '])
end
%% IO typ
fid = fopen([target_path, out_IOtyp_file], 'w');

% print Category1 typ
fprintf(fid, '(*---Category1---*)\n\n');
fprintf(fid, 'TYPE\n');
fprintf(fid, '\t'); fprintf(fid, [IOcat1, ' :\tSTRUCT\n']);
fprintf(fid, '\t\t'); fprintf(fid, ['Comm : ', IOcat2{1}, ';\n']);
for k = 1:8
    fprintf(fid, '\t\t'); fprintf(fid, ['No', num2str(k), ' : ', IOcat2{2}, ';\n']);
end
fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
fprintf(fid, 'END_TYPE\n\n');

% print Category2 typ
fprintf(fid, '(*---Category2---*)\n\n');
fprintf(fid, 'TYPE\n');
for k = 1:2
    fprintf(fid, '\t'); fprintf(fid, [IOcat2{k}, ' :\tSTRUCT\n']);
    for m = 1:IOcat3_ln(k)
        fprintf(fid, '\t\t'); fprintf(fid, [IOcat3{k}{m}, ' : ', IOcat3{k}{m}, '_typ;\n']);
    end
    fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
end
fprintf(fid, 'END_TYPE\n\n');

% print Category3 typ Comm
fprintf(fid, '(*---Category3_Comm---*)\n\n');
fprintf(fid, 'TYPE\n');
for k = 1:IOcat3_ln(1)
    fprintf(fid, '\t'); fprintf(fid, [IOcat3{1}{k}, '_typ :\tSTRUCT\n']);
    if IOcat3{1}{k}(2) == 'D'
        VarClass = 'BOOL';
    else
        VarClass = 'REAL';
    end
    CAT3VN{1}{k} = table_CIO.CAT4VName(table_CIO.CAT4 == IOcat3{1}{k});
    CAT3VN_ln{1}(k) = length(CAT3VN{1}{k});
    for l = 1:CAT3VN_ln{1}(k)
        fprintf(fid, '\t\t'); fprintf(fid, [CAT3VN{1}{k}{l}, ' : ', VarClass, ';\n']);
    end
    fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
end
fprintf(fid, 'END_TYPE\n\n');

% print Category4 typ Indiv
fprintf(fid, '(*---Category3_Indiv---*)\n\n');
fprintf(fid, 'TYPE\n');
for k = 1:IOcat3_ln(2)
    fprintf(fid, '\t'); fprintf(fid, [IOcat3{2}{k}, '_typ :\tSTRUCT\n']);
    if IOcat3{2}{k}(2) == 'D'
        VarClass = 'BOOL';
    else
        VarClass = 'REAL';
    end
    CAT3VN{2}{k} = table_IIO.CAT4VName(table_IIO.CAT4 == IOcat3{2}{k});
    CAT3VN_ln{2}(k) = length(CAT3VN{2}{k});
    for l = 1:CAT3VN_ln{2}(k)
        fprintf(fid, '\t\t'); fprintf(fid, [CAT3VN{2}{k}{l}, ' : ', VarClass, ';\n']);
    end
    fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
end
fprintf(fid, 'END_TYPE\n\n');

fclose all;

%%

disp(['MOCS IO structures has been written in "', target_path, out_IOtyp_file, '"'])
if exist([target_path, out_IOtyp_file, 'old'])
    visdiff(out_IOtyp_file, [out_IOtyp_file, 'old'])
end

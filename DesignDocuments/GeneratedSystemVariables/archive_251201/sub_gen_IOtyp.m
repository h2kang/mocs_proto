
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
        fprintf(fid, '\t\t'); fprintf(fid, [IOcat3_VN{m}, ' : ', IOcat3{k}{m}, ';\n']);
    end
    fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
end
fprintf(fid, 'END_TYPE\n\n');

% print Category3 typ
fprintf(fid, '(*---Category3---*)\n\n');
fprintf(fid, 'TYPE\n');
for k = 1:2
    for l = 1:IOcat3_ln(k)
        fprintf(fid, '\t'); fprintf(fid, [IOcat3{k}{l}, ' :\tSTRUCT\n']);
        if contains(IOcat3{k}{l},IOcat3_VN{l})
            for m = 1:IOcat4_ln(k)
                if IOcat4{k}{m}(2) == IOcat3_VN{l}(1)
                    fprintf(fid, '\t\t'); fprintf(fid, [IOcat4{k}{m}(3:4), 'Pro : ', IOcat4{k}{m}, '_typ;\n']);
                end
            end
        end
        fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
    end
end
fprintf(fid, 'END_TYPE\n\n');

% print Category4 typ Comm
fprintf(fid, '(*---Category4_Comm---*)\n\n');
fprintf(fid, 'TYPE\n');
for k = 1:IOcat4_ln(1)
    fprintf(fid, '\t'); fprintf(fid, [IOcat4{1}{k}, '_typ :\tSTRUCT\n']);
    if IOcat4{1}{k}(3) == 'D'
        VarClass = 'BOOL';
    else
        VarClass = 'REAL';
    end
        CAT4VN{1}{k} = table_CIO.CAT4VName(table_CIO.CAT4 == IOcat4{1}{k});
        CAT4VN_ln{1}(k) = length(CAT4VN{1}{k});
        for l = 1:CAT4VN_ln{1}(k)
            fprintf(fid, '\t\t'); fprintf(fid, [CAT4VN{1}{k}{l}, ' : ', VarClass, ';\n']);
        end        
    fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
end
fprintf(fid, 'END_TYPE\n\n');

% print Category4 typ Indiv
fprintf(fid, '(*---Category4_Indiv---*)\n\n');
fprintf(fid, 'TYPE\n');
for k = 1:IOcat4_ln(2)
    fprintf(fid, '\t'); fprintf(fid, [IOcat4{2}{k}, '_typ :\tSTRUCT\n']);
    if IOcat4{2}{k}(3) == 'D'
        VarClass = 'BOOL';
    else
        VarClass = 'REAL';
    end
        CAT4VN{2}{k} = table_IIO.CAT4VName(table_IIO.CAT4 == IOcat4{2}{k});
        CAT4VN_ln{2}(k) = length(CAT4VN{2}{k});
        for l = 1:CAT4VN_ln{2}(k)
            fprintf(fid, '\t\t'); fprintf(fid, [CAT4VN{2}{k}{l}, ' : ', VarClass, ';\n']);
        end        
    fprintf(fid, '\t'); fprintf(fid, ['END_STRUCT;\n']);
end
fprintf(fid, 'END_TYPE\n\n');

fclose all;
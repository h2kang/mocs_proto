clear
clc
%% Search file and path
curr_dir = cd;
IO_file = 'MultiMOCS_IO_List*';
IO_file_check = dir([curr_dir, '\**\', IO_file]);

if isempty(IO_file_check)
    error('MultiMOCS_IO_List file does not exist.')
else
    disp([IO_file_check.name, 'has been found.'])
end

out_IOtyp_file = 'MAT_IO.typ';
out_IObus_file = 'IO_bus';
out_PARtyp_file = 'MAT_IF.typ';
target_path = [IO_file_check.folder, '\GeneratedSystemVariables\'];

%% IO typ & bus

sub_opt_IOLists;

table_CIO = readtable(IO_file_check.name, optsC, "UseExcel", false);
table_CIO = table_CIO(~isundefined(table_CIO.No),:);
table_IIO = readtable(IO_file_check.name, optsI, "UseExcel", false);
table_IIO = table_IIO(~isundefined(table_IIO.No),:);
IOcat1 = 'IO_typ';
IOcat2 = {'CommIO_typ','IndivIO_typ'};

IOcat3{1} = {'CommMOCSIO_typ', 'CommFODSIO_typ'};
IOcat3{2} = {'IndivMOCSIO_typ', 'IndivFODSIO_typ', 'IndivSCRIO_typ'};
IOcat3_VN = {'MOCS', 'FODS', 'SCR'};
IOcat3_ln = [length(IOcat3{1}),length(IOcat3{2})];

IOcat4{1} = categories(table_CIO.CAT4);
IOcat4{2} = categories(table_IIO.CAT4);
IOcat4_ln = [length(IOcat4{1}),length(IOcat4{2})];

sub_gen_IOtyp;
sub_gen_IObus;
%%
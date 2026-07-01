clear
clc

%% Set Output files

out_IOtyp_file = 'MAT_IO.typ';
out_IObus_file = 'IO_bus';
out_Alarmtyp_file = 'MAT_AL.typ';
out_PARtyp_file = 'MAT_IF.typ';


%% Search file and path
curr_dir = cd;
IO_file = 'MultiMOCS_IO_List*';
IO_file_check = dir([curr_dir, '\DesignDocuments\', IO_file]);

if isempty(IO_file_check)
    error('MultiMOCS_IO_List file does not exist.')
else
    disp([IO_file_check.name, ' has been found.'])
end

target_path = [IO_file_check.folder, '\GeneratedSystemVariables\'];

%% Load IO Table

sub_opt_IOLists;

table_CIO = readtable(IO_file_check.name, optsC, "UseExcel", false);
table_CIO = table_CIO(~isundefined(table_CIO.CAT4),:);
table_IIO = readtable(IO_file_check.name, optsI, "UseExcel", false);
table_IIO = table_IIO(~isundefined(table_IIO.CAT4),:);

%% IO typ & bus

IOcat1 = 'IO_typ';
IOcat2 = {'CommIO_typ','IndivIO_typ'};

IOcat3{1} = {'CAI', 'CDI', 'CDO'};
IOcat3{2} = {'IAI', 'IDI', 'IAO', 'IDO'};
IOcat3_ln = [length(IOcat3{1}),length(IOcat3{2})];
%%%%%%%%%% uncomment necessary sub script %%%%%%%%%%
sub_gen_IOtyp;    % Generate MAT_IO.typ
sub_gen_IObus;    % Generate IO_bus.slx
%% Search Alarm Table

AL_file = 'MultiMOCS_Alarm_List*';
AL_file_check = dir([curr_dir, '\**\', AL_file]);

if isempty(AL_file_check)
    error('MultiMOCS_Alarm_List file does not exist.')
else
    disp([AL_file_check.name, ' has been found.'])
end

AlPathName = [AL_file_check.folder, '\'];
AlFileName = AL_file_check.name;

sub_opt_AlarmLists;
%%%%%%%%%% uncomment necessary sub script %%%%%%%%%%
sub_IO_to_HDAlarm;    % Generate MultiMOCS_Alarm_List_Rx.xx+1.xlsx

%% Load Alarm Table


table_AlCHD = readtable(AlFileName, optsAlCHD, "UseExcel", false);
table_AlCHD = table_AlCHD(~isnan(table_AlCHD.IDX),:);

table_AlCUD = readtable(AlFileName, optsAlCUD, "UseExcel", false);
table_AlCUD = table_AlCUD(~isnan(table_AlCUD.IDX),:);

table_AlIHD = readtable(AlFileName, optsAlIHD, "UseExcel", false);
table_AlIHD = table_AlIHD(~isnan(table_AlIHD.IDX),:);

table_AlIUD = readtable(AlFileName, optsAlIUD, "UseExcel", false);
table_AlIUD = table_AlIUD(~isnan(table_AlIUD.IDX),:);

%%%%%%%%%% uncomment necessary sub script %%%%%%%%%%
% sub_gen_Alarmtyp;    % Generate MAT_Alarm.typ

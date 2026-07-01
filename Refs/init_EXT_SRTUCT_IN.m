%%
open_system('MOCS_AS_Gen/from AS to SIMULINK/IF_PARA_STRUCT')
open_system('MOCS_AS_Gen/from AS to SIMULINK/IF_MATIN_IO_STRUCT')
open_system('MOCS_AS_Gen/from AS to SIMULINK/IF_ALARM_STRUCT')


%%
% 
% 
% 
% 
% block = 'MOCS_AS_Gen/IF_PARA_STRUCT';
% old = get_param(block, 'Position');
% %%
% get_param(block, 'OpenFcn')
% %%
% set_param(block, 'OpenFcn', old + [100 100 100 100]);   % 변화
% set_param(block, 'Position', old);               % 원복
% 
% block = 'MOCS_AS_Gen/IF_MATIN_IO_STRUCT';
% old = get_param(block, 'Position');
% set_param(block, 'Position', old + [1 1 1 1]);   % 변화
% set_param(block, 'Position', old);               % 원복
% 
% %%
% 
% 
% burblks.classes.blks.BR_ExtendedStructInBlock.Do('preSave',block)
% burblks.classes.blks.BR_ExtendedStructInBlock.Do('postsave',block)
% burblks.classes.blks.BR_ExtendedStructInBlock.Do('init',block)
% burblks.classes.blks.BR_ExtendedStructInBlock.Do('load',block)
% burblks.classes.blks.BR_ExtendedStructInBlock.Do('close',block)
% burblks.classes.blks.BR_ExtendedStructInBlock.Do('open',block)
% 
% set_param(bdroot,'SimulationCommand','update');
% 
% set_param(block, 'DialogParameters', get_param(block,'DialogParameters'));
% 
% mask = Simulink.Mask.get(block);
% Simulink.Mask.BaseHandleType(block);     % Mask Initialization 실행
% set_param(bdroot,'SimulationCommand','update'); % 모델 업데이트
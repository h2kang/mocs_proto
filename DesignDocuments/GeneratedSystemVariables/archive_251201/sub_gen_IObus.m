
IObus_check = dir([curr_dir, '\**\', out_IObus_file, '.slx']);
delete([IObus_check.folder, '/', IObus_check.name])

new_system(out_IObus_file)
open_system(out_IObus_file)

for n = 1:9
    switch n
        case 1
            CAT2_PN = 'Comm';

            k = 1;
        otherwise
            CAT2_PN = ['No', num2str(n-1)];
            k = 2;
    end
    h = add_block("simulink/Ports & Subsystems/Subsystem", ...
        string(out_IObus_file) + "/Subsystem",...
        "MakeNameUnique", "on",...
        Position = [n*100, 100, n*100+80, 150]);
    set_param(h, "name", CAT2_PN)
    delete_block([out_IObus_file, '/', CAT2_PN, '/In1'])
    delete_block([out_IObus_file, '/', CAT2_PN, '/Out1'])
    for l = 1:IOcat4_ln(k)
        CAT4_PN = IOcat4{k}{l};
        switch CAT4_PN(2)
            case 'M'
                CAT3_PN = 'FODS';
            case 'F'
                CAT3_PN = 'MOCS';
            case 'S'
                CAT3_PN = 'SCR';
        end
        switch CAT4_PN(3)
            case'D'
                BusClass = "boolean";
            otherwise
                BusClass = "single";
        end

        for m = 1:CAT4VN_ln{k}(l)
            IO_Tag = CAT4VN{k}{l}{m};
            add_block("simulink/Ports & Subsystems/Out Bus Element",...
                string(out_IObus_file) + "/" + string(CAT2_PN) + "/Out Bus Element",...
                "MakeNameUnique", "on",...
                Position = [l*200, m*10, l*200+10, m*10+10], ...                    PortName = CAT4_PN, ...
                Element = [CAT3_PN, '.', CAT4_PN, '.', IO_Tag],...
                OutDataTypeStr = BusClass);
        end
    end
    set_param([out_IObus_file, '/', CAT2_PN, '/Out Bus Element'], 'PortName', CAT2_PN)
end

filename = save_system([target_path, out_IObus_file]);


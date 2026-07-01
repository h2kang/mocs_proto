%% Set up the Import Options

optsC = spreadsheetImportOptions("NumVariables", 25);
optsC.Sheet = "Common module";
optsC.VariableNames = readcell(IO_file_check.name, "Sheet", optsC.Sheet, "Range", "A1:Y1");
optsC.VariableTypes = readcell(IO_file_check.name, "Sheet", optsC.Sheet, "Range", "A2:Y2");
optsC.DataRange = "A5";

%% Set up the Import Options
optsI = spreadsheetImportOptions("NumVariables", 37);
optsI.Sheet = "No.# Module";
optsI.VariableNames = readcell(IO_file_check.name, "Sheet", optsI.Sheet, "Range", "A1:Y1");
optsI.VariableTypes = readcell(IO_file_check.name, "Sheet", optsI.Sheet, "Range", "A2:Y2");
optsI.DataRange = "A5";

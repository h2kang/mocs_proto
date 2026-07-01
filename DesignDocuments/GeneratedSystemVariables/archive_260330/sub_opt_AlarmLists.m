%% Set up the Import Options

optsAlCHD = spreadsheetImportOptions("NumVariables", 16);
optsAlCHD.Sheet = "Common.HD";
optsAlCHD.VariableNames = readcell(AlFileName, "Sheet", optsAlCHD.Sheet, "Range", "A1:P1");
optsAlCHD.VariableTypes = readcell(AlFileName, "Sheet", optsAlCHD.Sheet, "Range", "A2:P2");
VariableNamingRule.DataRange = "A3";

%% Set up the Import Options

optsAlCUD = spreadsheetImportOptions("NumVariables", 16);
optsAlCUD.Sheet = "Common.UD";
optsAlCUD.VariableNames = readcell(AlFileName, "Sheet", optsAlCUD.Sheet, "Range", "A1:P1");
optsAlCUD.VariableTypes = readcell(AlFileName, "Sheet", optsAlCUD.Sheet, "Range", "A2:P2");
optsAlCUD.DataRange = "A3";

%% Set up the Import Options

optsAlIHD = spreadsheetImportOptions("NumVariables", 16);
optsAlIHD.Sheet = "No#.HD";
optsAlIHD.VariableNames = readcell(AlFileName, "Sheet", optsAlIHD.Sheet, "Range", "A1:P1");
optsAlIHD.VariableTypes = readcell(AlFileName, "Sheet", optsAlIHD.Sheet, "Range", "A2:P2");
optsAlIHD.DataRange = "A3";

%% Set up the Import Options

optsAlIUD = spreadsheetImportOptions("NumVariables", 16);
optsAlIUD.Sheet = "No#.UD";
optsAlIUD.VariableNames = readcell(AlFileName, "Sheet", optsAlIUD.Sheet, "Range", "A1:P1");
optsAlIUD.VariableTypes = readcell(AlFileName, "Sheet", optsAlIUD.Sheet, "Range", "A2:P2");
optsAlIUD.DataRange = "A3";

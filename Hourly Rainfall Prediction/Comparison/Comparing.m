
format short g;

File = load('validationData.mat');
Actual = File.Mval(:,24);

% File = load('ActualReg.mat');
% Actual = File.Actual;

File = load('SPR20000.mat');
Predicted = File.predicted;

M1 = Measures(Actual,Predicted,1);
M2 = Measures(Actual,Predicted,2);
M3 = Measures(Actual,Predicted,3);
M4 = Measures(Actual,Predicted,4);
M5 = Measures(Actual,Predicted,5);
M6 = Measures(Actual,Predicted,6);

M = [M1; M2; M3; M4; M5; M6];

save('SPR20000Data','M');
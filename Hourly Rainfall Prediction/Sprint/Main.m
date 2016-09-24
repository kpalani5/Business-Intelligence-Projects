M = load('trainSample.mat');
X = M.sample;
T = load('validationData.mat');
D = T.Mval;

format short g;
SprintTree = SprintClassifier(X);
save('Trained.mat','SprintTree');
ST = load('Trained.mat');
SprintTree = ST.SprintTree;
predicted = SprintResult(SprintTree,D);

save('SPR10000.mat','predicted');
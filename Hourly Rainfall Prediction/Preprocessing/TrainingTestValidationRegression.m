B = load('latest.mat');
tr_per = 0.7;
te_per = 0.15;

X = B.MData;

training = [];
test = [];
validation = [];

q = size(X,1);
rand = randperm(q);
s = floor(q*tr_per);
for i = 1:s
    training = [training; X(rand(1,i),:)];
end 
t = floor(q*te_per);
for i = s+1:s+t
    test = [test; X(rand(1,i),:)];
end
for i = s+t+1:q
    validation = [validation; X(rand(1,i),:)];
end


Mtrain = training;
Mtest = test;
Mval = validation;

save('trainDataRegression.mat','Mtrain');
save('testDataRegression.mat','Mtest');
save('validationDataRegression.mat','Mval');
  
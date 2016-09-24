B = load('latest2.mat');
tr_per = 0.7;
te_per = 0.15;

X = B.MData;

X1 = [];
X2 = [];
X3 = [];
X4 = [];
X5 = [];
X6 = [];

for i = 1:size(X)
    if X(i,24) == 1
        X1 = [X1; X(i,:)];
    elseif X(i,24) == 2
        X2 = [X2; X(i,:)];
    elseif X(i,24) == 3
        X3 = [X3; X(i,:)];
    elseif X(i,24) == 4
        X4 = [X4; X(i,:)];
    elseif X(i,24) == 5
        X5 = [X5; X(i,:)];
    else
        X6 = [X6; X(i,:)];
    end
end

training = [];
test = [];
validation = [];

q = size(X1,1);
rand = randperm(q);
s = floor(q*tr_per);
for i = 1:s
    training = [training; X1(rand(1,i),:)];
end 
t = floor(q*te_per);
for i = s+1:s+t
    test = [test; X1(rand(1,i),:)];
end
for i = s+t+1:q
    validation = [validation; X1(rand(1,i),:)];
end

q = size(X2,1);
rand = randperm(q);
s = floor(q*tr_per);
for i = 1:s
    training = [training; X2(rand(1,i),:)];
end 
t = floor(q*te_per);
for i = s+1:s+t
    test = [test; X2(rand(1,i),:)];
end
for i = s+t+1:q
    validation = [validation; X2(rand(1,i),:)];
end

q = size(X3,1);
rand = randperm(q);
s = floor(q*tr_per);
for i = 1:s
    training = [training; X3(rand(1,i),:)];
end 
t = floor(q*te_per);
for i = s+1:s+t
    test = [test; X3(rand(1,i),:)];
end
for i = s+t+1:q
    validation = [validation; X3(rand(1,i),:)];
end

q = size(X4,1);
rand = randperm(q);
s = floor(q*tr_per);
for i = 1:s
    training = [training; X4(rand(1,i),:)];
end 
t = floor(q*te_per);
for i = s+1:s+t
    test = [test; X4(rand(1,i),:)];
end
for i = s+t+1:q
    validation = [validation; X4(rand(1,i),:)];
end

q = size(X5,1);
rand = randperm(q);
s = floor(q*tr_per);
for i = 1:s
    training = [training; X5(rand(1,i),:)];
end 
t = floor(q*te_per);
for i = s+1:s+t
    test = [test; X5(rand(1,i),:)];
end
for i = s+t+1:q
    validation = [validation; X5(rand(1,i),:)];
end

q = size(X6,1);
rand = randperm(q);
s = floor(q*tr_per);
for i = 1:s
    training = [training; X6(rand(1,i),:)];
end 
t = floor(q*te_per);
for i = s+1:s+t
    test = [test; X6(rand(1,i),:)];
end
for i = s+t+1:q
    validation = [validation; X6(rand(1,i),:)];
end

Mtrain = training;
Mtest = test;
Mval = validation;

save('trainData.mat','Mtrain');
save('testData.mat','Mtest');
save('validationData.mat','Mval');
  
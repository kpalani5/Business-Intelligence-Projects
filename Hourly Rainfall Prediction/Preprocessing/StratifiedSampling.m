Y = load('trainData.mat');

X = Y.Mtrain;

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


SampleSize = 10000;

s1 = floor(size(X1,1)*SampleSize/size(X,1));
s2 = floor(size(X2,1)*SampleSize/size(X,1));
s3 = floor(size(X3,1)*SampleSize/size(X,1));
s4 = floor(size(X4,1)*SampleSize/size(X,1));
s5 = floor(size(X5,1)*SampleSize/size(X,1));
s6 = floor(size(X6,1)*SampleSize/size(X,1));

sample = [];

ran = randperm(size(X1,1));
ran = ran(1:s1);
for i = 1:s1
    sample = [sample; X1(ran(i),:)];
end

ran = randperm(size(X2,1));
ran = ran(1:s2);
for i = 1:s2
    sample = [sample; X2(ran(i),:)];
end

ran = randperm(size(X3,1));
ran = ran(1:s3);
for i = 1:s3
    sample = [sample; X3(ran(i),:)];
end

ran = randperm(size(X4,1));
ran = ran(1:s4);
for i = 1:s4
    sample = [sample; X4(ran(i),:)];
end

ran = randperm(size(X5,1));
ran = ran(1:s5);
for i = 1:s5
    sample = [sample; X5(ran(i),:)];
end

ran = randperm(size(X6,1));
ran = ran(1:s6);
for i = 1:s6
    sample = [sample; X6(ran(i),:)];
end

save('trainSample.mat','sample');
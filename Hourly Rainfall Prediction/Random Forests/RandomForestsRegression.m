Xt = load('trainDataRegression.mat');

X = Xt.Mtrain(:,1:23);
Y = Xt.Mtrain(:,24);

RF = TreeBagger(5,X,Y,'Method','regression');

Xv = load('validationDataRegression.mat');

X1 = Xv.Mval(:,1:23);
Y1 = Xv.Mval(:,24);

Y2 = predict(RF,X1);

Yc1 = ones(size(Y1,1),1);
Yc2 = ones(size(Y2,1),1);


for i = 1:size(Y1,1)
    if Y1(i) < 0.25
        Yc1(i,1) = 1;
    elseif Y1(i,1) < 1
        Yc1(i,1) = 2;
    elseif Y1(i,1) < 4
        Yc1(i,1) = 3;
    elseif Y1(i,1) < 16
        Yc1(i,1) = 4;
    elseif Y1(i,1) < 50
        Yc1(i,1) = 5;
    else
        Yc1(i,1) = 6;
    end
end

for i = 1:size(Y2,1)
    if Y2(i) < 0.25
        Yc2(i,1) = 1;
    elseif Y2(i,1) < 1
        Yc2(i,1) = 2;
    elseif Y2(i,1) < 4
        Yc2(i,1) = 3;
    elseif Y2(i,1) < 16
        Yc2(i,1) = 4;
    elseif Y2(i,1) < 50
        Yc2(i,1) = 5;
    else
        Yc2(i,1) = 6;
    end
end

Actual = Yc1;
Predicted = Yc2;

save('ActualReg','Actual');
save('RFR5','Predicted');
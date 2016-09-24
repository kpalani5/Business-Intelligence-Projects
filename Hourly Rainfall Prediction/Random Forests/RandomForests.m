Xt = load('trainData.mat');

X = Xt.Mtrain(:,1:23);
Y = Xt.Mtrain(:,24);

RF = TreeBagger(150,X,Y);

Xv = load('validationData.mat');

X1 = Xv.Mval(:,1:23);
Y1 = Xv.Mval(:,24);

Y2 = predict(RF,X1);
Y2 = cell2mat(Y2);

Predicted = ones(size(Y2,1),1);
for i = 1:size(Y2,1)
    Predicted(i) = str2double(Y2(i));
end
save('RFC150','Predicted');
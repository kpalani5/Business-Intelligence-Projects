M = load('latest.mat');
X = M.MData;
MData = zeros(size(X,1),size(X,2));

for i = 1:size(X,1)
    MData(i,1:23) = X(i,1:23); 
    if X(i,24) < 0.25
        MData(i,24) = 1;
    elseif X(i,24) < 1
        MData(i,24) = 2;
    elseif X(i,24) < 4
        MData(i,24) = 3;
    elseif X(i,24) < 16
        MData(i,24) = 4;
    elseif X(i,24) < 50
        MData(i,24) = 5;
    else
        MData(i,24) = 6;
    end
end

save('latest2.mat','MData');

plot(sort(MData(:,24)));
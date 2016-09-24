A = load('train.mat');
M = ones(1048575,24);
x = 0;
for i = 1:1048575
    q = 0;
    for j = 4:23
        if A.Data(i,j) == 0
           q = q + 1;
        end
    end 
    if  q < 1
        x = x + 1;
        M(x,:) = A.Data(i,:);
    end
end

MD = ones(x,24);
for i = 1:x
    MD(i,:) = M(i,:);
end

MD2 = ones(151156,24);
q = 0;
for i = 1:151156
    if MD(i,24) <= 200000
        q = q + 1;
        MD2(q,:) = MD(i,:);
    end
end

MData = ones(q,24);
for i = 1:q
    MData(i,:) = MD2(i,:);
end

size(MData)
save('latest.mat','MData');


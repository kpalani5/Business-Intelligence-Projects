function [attribute,splitIndex,splitValue] = SprintSplit(X)
    attrMin = ones(size(X,2)-1,1);
    splitPoint = ones(size(X,2)-1,1);
    attrIndex = ones(size(X,2)-1,1);
    for j = 1:size(X,2)-1
        A = zeros(size(X,1),3);
        for i = 1:size(X,1)
            A(i,:) = [X(i,j), X(i,24), i];
        end
        A = sortrows(A,1);
        attrMin(j) = intmax('int64');
        splitPoint(j) = 0;
        for i = 1:size(A,1)- 1
            B1 = A(1:i,:);
            B2 = A(i+1:size(A,1),:);
            c = zeros(2,6);
            n = zeros(2,1);
            n(1) = size(B1,1);
            n(2) = size(B2,1);
            for k = 1:6
                c(1,k) = sum(B1(:,2)==k);
                c(2,k) = sum(B2(:,2)==k);
            end
            if ginisplit(n,c) < attrMin(j,1)
                attrMin(j,1) = ginisplit(n,c);
                splitPoint(j,1) = (B1(n(1),1) + B2(1,1))/2;
                attrIndex(j,1) = i;
            end
        end
    end
    [attrMain,attribute] = min(attrMin(1:23,1));
    splitValue = splitPoint(attribute);
    splitIndex = attrIndex(attribute);
end
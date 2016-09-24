function SprintTree = SprintAlgorithm(SprintTree,X,parent,num)
    [attribute,index,value] = SprintSplit(X);
    X = sortrows(X,attribute);
    X1 = X(1:index,:);
    X2 = X(index+1:size(X,1),:);
    flag1 = 0;
    flag2 = 0;
    for i = 1:6
        if sum(X1(:,24) == i) == size(X1,1)
            flag1 = i;
        end
        if sum(X2(:,24) == i) == size(X2,1)
            flag2 = i;
        end
    end
    SprintTree = [SprintTree; num,parent,attribute,value,0];
    parent = num;
    if flag1 == 0
        SprintTree = SprintAlgorithm(SprintTree,X1,parent,parent*2);
    else
        SprintTree = [SprintTree; parent*2,parent,attribute,value,flag1];
    end
    if flag2 == 0
        SprintTree = SprintAlgorithm(SprintTree,X2,parent,parent*2 + 1);
    else
        SprintTree = [SprintTree; parent*2 + 1,parent,attribute,value,flag2];
    end
    SprintTree = sortrows(SprintTree,2); 
end
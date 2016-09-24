function Y = SprintResult(SprintTree,X)
    Y = ones(size(X,1),1);
    for i = 1:size(X)
        Y(i,1) = SprintTest(SprintTree,X(i,:));
    end
end
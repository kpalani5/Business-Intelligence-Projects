function Y = SprintTest(SprintTree,X)
    i = 1;
    Y = 0;
    while i <= size(SprintTree,1)
        if SprintTree(i,5) > 0
            Y = SprintTree(i,5);
            i = size(SprintTree,1) + 1;
        elseif X(SprintTree(i,3)) < SprintTree(i,4)
            i = 2*i;
        else
            i = (2*i) + 1;
        end
    end
end
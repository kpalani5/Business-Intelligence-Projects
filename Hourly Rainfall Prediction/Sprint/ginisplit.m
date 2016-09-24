function gs = ginisplit(n,c)
    sum1 = 0;
    p = ones(length(n),size(c,2));
    for i = 1:size(c,1)
        for j = 1:size(c,2)
            p(i,j) = c(i,j)/n(i);
        end
    end
    for i = 1:length(n)
        sum1 = sum1 + (n(i)/sum(n))*gini(p(i,:));
    end 
    gs = sum1;
end
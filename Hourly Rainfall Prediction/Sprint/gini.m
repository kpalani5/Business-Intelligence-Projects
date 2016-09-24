function g = gini(p)
    sum1 = 0;
    for i = 1:length(p)
        sum1 = sum1 + (p(i)*p(i));
    end
    g = 1 - sum1;
end
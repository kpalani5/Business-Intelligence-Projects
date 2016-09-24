function Measure = Measures(Act,Pre,class)
    ct = length(Act);
    
    tp = 0;
    fp = 0;
    fn = 0;
    tn = 0;
    accuracy = 0;
    
    for i = 1:ct
        if Act(i) == Pre(i)
            accuracy = accuracy + 1;
        end
        if Act(i) == class && Pre(i) == class
            tp = tp + 1;
        elseif Act(i) == class
            fn = fn + 1;
        elseif Pre(i) == class
            fp = fp + 1;
        else
            tn = tn + 1;
        end
    end
    
    accuracy = accuracy/ct;
    recall = tp/(tp+fn);
    specificity = tn/(fp+tn);
    precision = tp/(tp+fp);
    fmeasure = 2*recall*precision/(precision + recall);
    gmean = sqrt(recall*specificity);
    
    Measure = [accuracy recall precision fmeasure specificity gmean tn fn tp fp];
end

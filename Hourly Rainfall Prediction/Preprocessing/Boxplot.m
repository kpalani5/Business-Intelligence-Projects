    M = load('latest.mat');
    MData = M.MData;
    med=median(MData(:,24));
    stddev=std(MData(:,24));
    firstq=med-stddev;
    thirdq=med+stddev;
    iq=thirdq-firstq;
    s1=thirdq+3*iq;
    s2=firstq-3*iq;
    
    rows_deleted=[];
    for j=1:size(MData,1)
        if(MData(j,24)>s1 || MData(j,24)<s2)
            rows_deleted=[rows_deleted,j];
        end
    end
    MData(rows_deleted,:)=[];

    save('latest.mat','MData');
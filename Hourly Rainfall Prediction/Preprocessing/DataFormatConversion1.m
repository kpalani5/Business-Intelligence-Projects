fid = fopen('test.csv','r'); 
for i=1:50000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i} = strsplit(B,',');
end
save('test1.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=50001:100000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-50000} = strsplit(B,',');
end
save('test2.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=100001:150000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-100000} = strsplit(B,',');
end
save('test3.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=150001:200000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-150000} = strsplit(B,',');
end
save('test4.mat','D');
pos = ftell(fid);
fclose(fid);
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=200001:250000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-200000} = strsplit(B,',');
end
save('test5.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=250001:300000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-250000} = strsplit(B,',');
end
save('test6.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=300001:350000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-300000} = strsplit(B,',');
end
save('test7.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=350001:400000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-350000} = strsplit(B,',');
end
save('test8.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=400001:450000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-400000} = strsplit(B,',');
end
save('test9.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=450001:500000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-450000} = strsplit(B,',');
end
save('test10.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=500001:550000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-500000} = strsplit(B,',');
end
save('test11.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=550001:600000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-550000} = strsplit(B,',');
end
save('test12.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r');
fseek(fid,pos,'bof');
for i=600001:650000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-600000} = strsplit(B,',');
end
save('test13.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=650001:700000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-650000} = strsplit(B,',');
end
save('test14.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=700001:750000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-700000} = strsplit(B,',');
end
save('test15.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=750001:800000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-750000} = strsplit(B,',');
end
save('test16.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=800001:850000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-800000} = strsplit(B,',');
end
save('test17.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=850001:900000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-850000} = strsplit(B,',');
end
save('test18.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=900001:950000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-900000} = strsplit(B,',');
end
save('test19.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r'); 
fseek(fid,pos,'bof');
for i=950001:1000000
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-950000} = strsplit(B,',');
end
save('test20.mat','D');
pos = ftell(fid);
fclose(fid); 
clearvars -except pos

fid = fopen('test.csv','r');
fseek(fid,pos,'bof');
for i=1000001:1048576
    C = textscan(fid,'%s,');
    B = char(C{1,1});
    B = strrep(B,',,',',0.0,');
    D{i-1000000} = strsplit(B,',');
end
save('test21.mat','D');
pos = ftell(fid);
fclose(fid);
clearvars -except pos

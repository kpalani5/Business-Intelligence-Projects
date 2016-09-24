
A1 = load('test1.mat');
A2 = load('test2.mat');
A3 = load('test3.mat');
A4 = load('test4.mat');
A5 = load('test5.mat');
A6 = load('test6.mat');
A7 = load('test7.mat');
A8 = load('test8.mat');
A9 = load('test9.mat');
A10 = load('test10.mat');
A11 = load('test11.mat');
A12 = load('test12.mat');
A13 = load('test13.mat');
A14 = load('test14.mat');
A15 = load('test15.mat');
A16 = load('test16.mat');
A17 = load('test17.mat');
A18 = load('test18.mat');
A19 = load('test19.mat');
A20 = load('test20.mat');
A21 = load('test21.mat');




Data = [A1.Dat; A2.Dat; A3.Dat; A4.Dat; A5.Dat; A6.Dat; A7.Dat; A8.Dat; A9.Dat; A10.Dat; A11.Dat; A12.Dat; A13.Dat; A14.Dat; A15.Dat; A16.Dat; A17.Dat; A18.Dat; A19.Dat; A20.Dat; A21.Dat];
save('test.mat','Data');
clearvars;
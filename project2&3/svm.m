data=meas;
Trainset = 'D:\projects\spring st se2 mining 2016\datamining 2162-CSE-5334-001-DATA-MINING--2016\project2&3\ATNTFaceImage400.txt';
%Trainclass = 'C:\Users\riju\Texts_Sem2\DM\Centroid\class20.txt';
X1=dlmread(Trainset,',',0,0);
%Y1=dlmread(Trainclass,',',0,0);

testset=[data(21:50,:);data(71:100,:);data(121:150,:)];
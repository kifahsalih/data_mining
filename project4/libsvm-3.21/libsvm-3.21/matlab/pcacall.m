a = zeros(8,4);
a(1,1)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','LR',0,2,'A',10);
a(1,2)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','LR',0,2,'A',20);
a(1,3)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','LR',0,2,'A',30);
a(1,4)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','LR',0,2,'A',50);

a(2,1)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','KNN',3,0,'A',10);
a(2,2)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','KNN',3,0,'A',20);
a(2,3)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','KNN',3,0,'A',30);
a(2,4)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','KNN',3,0,'A',50);

a(3,1)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','CENTROID',0,0,'A',10);
a(3,2)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','CENTROID',0,0,'A',20);
a(3,3)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','CENTROID',0,0,'A',30);
a(3,4)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','CENTROID',0,0,'A',50);

a(4,1)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,1,'A',10);
a(4,2)= pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,1,'A',20);
a(4,3)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,1,'A',30);
a(4,4)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,1,'A',50);

%a(5,1)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,2,'A',10);
%a(5,2)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,2,'A',20);
%a(5,3)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,2,'A',30);
%a(5,4)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,2,'A',50);

%Hand written
a(5,1)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','LR',0,2,'A',10);
a(5,2)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','LR',0,2,'A',20);
a(5,3)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','LR',0,2,'A',30);
a(5,4)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','LR',0,2,'A',50);

a(6,1)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','KNN',3,2,'A',10);
a(6,2)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','KNN',3,2,'A',20);
a(6,3)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','KNN',3,2,'A',30);
a(6,4)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','KNN',3,2,'A',50);

a(7,1)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','CENTROID',0,0,'A',10);
a(7,2)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','CENTROID',0,0,'A',20);
a(7,3)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','CENTROID',0,0,'A',30);
a(7,4)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','CENTROID',0,0,'A',50);

a(8,1)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,1,'A',10);
a(8,2)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,1,'A',20);
a(8,3)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,1,'A',30);
a(8,4)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,1,'A',50);

%a(10,1)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,2,'A',10);
%a(10,2)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,2,'A',20);
%a(10,3)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,2,'A',30);
%a(10,4)=pca_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,2,'A',50);


dataset({a 'D_TEN','D_TWENTY','D_THIRTY','D_FIFTY'}, ...
              'obsnames', {'ATN T-LR','ATNT-KNN-3','ATNT-CENTROID','ATNT-SVM-1','HAND-LR','HAND-KNN-3','HAND-CENTROID','HAND-SVM-1'})

x=[10 20 30 50];
plot(x,a(1,:),'-.',x,a(2,:),'*-',x,a(3,:),'-o',x,a(4,:),'LineWidth',3);
set(gca,'XTick',[10 20 30 50] ); 
xlabel('H')
ylabel('%')
legend('ATN-LR','ATNT-KNN-3 ','ATNT-CENTROID','ATNT-SVM-1')
figure()
plot(x,a(5,:),'.-',x,a(6,:),'-*',x,a(7,:),'-o',x,a(8,:),'black','LineWidth',3)
set(gca,'XTick',[10 20 30 50] );
xlabel('H')
ylabel('%')
legend('HAND-LR','HAND-KNN-3','HAND-CENTROID','HAND-SVM-1')
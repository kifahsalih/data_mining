Project 4
a = zeros(10,4);
a(1,1)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','LR',0,2,'N',10);
a(1,2)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','LR',0,2,'N',20);
a(1,3)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','LR',0,2,'N',30);
a(1,4)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','LR',0,2,'N',50);

a(2,1)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','KNN',3,0,'N',10);
a(2,2)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','KNN',3,0,'N',20);
a(2,3)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','KNN',3,0,'N',30);
a(2,4)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','KNN',3,0,'N',50);

a(3,1)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','CENTROID',0,0,'N',10);
a(3,2)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','CENTROID',0,0,'N',20);
a(3,3)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','CENTROID',0,0,'N',30);
a(3,4)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','CENTROID',0,0,'N',50);

a(4,1)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,1,'N',10);
a(4,2)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,1,'N',20);
a(4,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,1,'N',30);
a(4,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,1,'N',50);

a(5,1)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,2,'N',10);
a(5,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,2,'N',20);
a(5,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,2,'N',30);
a(5,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt','SVM',0,2,'N',50);
%Hand written
a(6,1)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','LR',0,2,'N',10);
a(6,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','LR',0,2,'N',20);
a(6,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','LR',0,2,'N',30);
a(6,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','LR',0,2,'N',50);

a(7,1)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','KNN',3,0,'N',10);
a(7,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','KNN',3,0,'N',20);
a(7,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','KNN',3,0,'N',30);
a(7,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','KNN',3,0,'N',50);

a(8,1)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','CENTROID',0,0,'N',10);
a(8,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','CENTROID',0,0,'N',20);
a(8,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','CENTROID',0,0,'N',30);
a(8,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','CENTROID',0,0,'N',50);

a(9,1)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,1,'N',10);
a(9,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,1,'N',20);
a(9,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,1,'N',30);
a(9,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,1,'N',50);

a(10,1)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,2,'N',10);
a(10,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,2,'N',20);
a(10,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,2,'N',30);
a(10,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt','SVM',0,2,'N',50);


dataset({a 'D_TEN','D_TWENTY','D_THIRTY','D_FIFTY'}, ...
              'obsnames', {'ATN T-LR','ATNT-KNN-3','ATNT-CENTROID','ATNT-SVM-1','ATNT-SVM-2','HAND-LR','HAND-KNN-3','HAND-CENTROID','HAND-SVM-1','HAND-SVM-2'})

x=[10 20 30 50];
plot(x,a(1,:),'-.',x,a(2,:),'*-',x,a(3,:),'-o',x,a(4,:),'--',x,a(5,:),'LineWidth',3);
set(gca,'XTick',[10 20 30 50] ); 
xlabel('H')
ylabel('%')
legend('ATN-LR','ATNT-KNN-3 ','ATNT-CENTROID','ATNT-SVM-1','ATNT-SVM-2')
figure()
plot(x,a(6,:),'.-',x,a(7,:),'-*',x,a(8,:),'-o',x,a(9,:),'--',x,a(10,:),'black','LineWidth',3)
set(gca,'XTick',[10 20 30 50] );
xlabel('H')
ylabel('%')
legend('HAND-LR','HAND-KNN-3','HAND-CENTROID','HAND-SVM-1','HAND-SVM-2')
% ALl in one graph
% % figure()
% % % plot(x,a(1,:),'-.',x,a(2,:),'*-',x,a(3,:),'-o',x,a(4,:),'--',x,a(5,:),x,a(6,:),'.-',x,a(7,:),'-*',x,a(8,:),'-o',x,a(9,:),'--',x,a(10,:),,'LineWidth',3);
% % % set(gca,'XTick',[10 20 30 50] ); 
% % % xlabel('H')
% % % ylabel('%')
% % % legend('ATN T-LR','ATNT-KNN-3 ','ATNT-CENTROID','ATNT-SVM-1','ATNT-SVM-2','HAND-LR','HAND-KNN-3','HAND-CENTROID','HAND-SVM-1','HAND-SVM-2')
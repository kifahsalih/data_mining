a = zeros(8,1); % linear discriminant analysis
xlim=get(gca,'xlim');
ypoint= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','LR',0,2,'N',10);
%a(1,2)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','LR',0,2,'N',20);
a(1,1)= lda_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','LR',0,2,'B');

ypoint1= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','KNN',3,0,'N',10);
%a(2,2)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','KNN',3,0,'N',20);
a(2,1)= lda_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','KNN',3,0,'B');

ypoint2= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','CENTROID',0,0,'N',10);
%a(3,2)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','CENTROID',0,0,'N',20);
a(3,1)= lda_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','CENTROID',0,0,'B');

ypoint3= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,1,'N',10);
%a(4,2)= customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,1,'N',20);
a(4,1)= lda_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,1,'B');

% a(5,1)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,2,'N',10);
% a(5,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,2,'N',50);
% a(5,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,2,'Y',10);
% a(5,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,2,'Y',20);
% a(5,5)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,2,'Y',30);
% a(5,6)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt','SVM',0,2,'Y',50);
%Hand written
ypoint4=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','LR',0,2,'N',10);
%a(5,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','LR',0,2,'N',20);
a(5,1)=lda_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','LR',0,2,'B');

ypoint5=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','KNN',3,0,'N',10);
%a(6,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','KNN',3,0,'N',20);
a(6,1)=lda_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','KNN',3,0,'B');

ypoint6=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','CENTROID',0,0,'N',10);
%a(7,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','CENTROID',0,0,'N',20);
a(7,1)=lda_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','CENTROID',0,0,'B');

ypoint7=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,1,'N',10);
%a(8,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,1,'N',20);
a(8,1)=lda_main(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,1,'B');

% a(10,1)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,2,'N',10);
% a(10,2)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,2,'N',50);
% a(10,3)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,2,'Y',10);
% a(10,4)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,2,'Y',20);
% a(10,5)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,2,'Y',30);
% a(10,6)=customkfolds(5,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt','SVM',0,2,'Y',50);


dataset({a 'NO_DIM'}, ...
              'obsnames', {'ATNT-LR','ATNT-KNN-3','ATNT-CENTROID','ATNT-SVM-1','HAND-LR','HAND-KNN-3','HAND-CENTROID','HAND-SVM-1'})

x=[10 20 30 50];
plot([10 50],[ypoint ypoint],'red','LineWidth',2);
hold on;
plot([10 50],[ypoint1 ypoint1],'blue','LineWidth',2);
hold on;
plot([10 50],[ypoint2 ypoint2],'green','LineWidth',2);
hold on;
plot([10 50],[ypoint3 ypoint3],'black','LineWidth',2);
hold on;
%plot([10 50],[ypoint ypoint],'red',x,a(1,:),'red',[10 50],[ypoint1 ypoint1],'blue',x,a(2,:),'blue',[10 50],[ypoint2 ypoint2],'green',x,a(3,:),'green',[10 50],[ypoint3 ypoint3],'black',x,a(4,:),'black','LineWidth',3);
plot([10 50],[a(1,1) a(1,1)],'red',[10 50],[a(2,1) a(2,1)],'blue',[10 50],[a(3,1) a(3,1)],'green',[10 50],[a(4,1) a(4,1)],'black','LineWidth',3);
set(gca,'XTick',[10 20 30 50] ); 
xlabel('Dimension');
%set(gca,'YTick',[10 20 30 40 50 60 70 80 90 100] ); 
%set(gca,'YTickLabel',str2mat('10','20','30','40','50','60','70','80','90','100')); 
ylabel('%');
legend('ATNT-LR-ACT&LDA','ATNT-KNN3-ACT&LDA ','ATNT-CENTROID-ACT&LDA','ATNT-SVM1-ACT&LDA');
figure();
plot([10 50],[ypoint4 ypoint4],'red','LineWidth',2);
hold on;
plot([10 50],[ypoint5 ypoint5],'blue','LineWidth',2);
hold on;
plot([10 50],[ypoint6 ypoint6],'green','LineWidth',2);
hold on;
plot([10 50],[ypoint7 ypoint7],'black','LineWidth',2);
hold on;
%plot([10 50],[ypoint4 ypoint4],'red',x,a(5,:),'red',[10 50],[ypoint5 ypoint5],'blue',x,a(6,:),'blue',[10 50],[ypoint6 ypoint6],'green',x,a(7,:),'green',[10 50],[ypoint7 ypoint7],'black',x,a(8,:),'black','LineWidth',3);
plot([10 50],[a(5,1) a(5,1)],'red',[10 50],[a(6,1) a(6,1)],'blue',[10 50],[a(7,1) a(7,1)],'green',[10 50],[a(8,1) a(8,1)],'black','LineWidth',2);
set(gca,'XTick',[10 20 30 50] );
xlabel('Dimension');
%set(gca,'YTick',[10 20 30 40 50 60 70 80 90 100] );
%set(gca,'YTickLabel',str2mat('10','20','30','40','50','60','70','80','90','100'));
ylabel('%');
legend('HAND-LR-ACT&LDA','HAND-KNN3-ACT&LDA','HAND-CENTROID-ACT&LDA','HAND-SVM1-ACT&LDA');
% ALl in one graph
% % figure()
% % % plot(x,a(1,:),'-.',x,a(2,:),'*-',x,a(3,:),'-o',x,a(4,:),'--',x,a(5,:),x,a(6,:),'.-',x,a(7,:),'-*',x,a(8,:),'-o',x,a(9,:),'--',x,a(10,:),,'LineWidth',3);
% % % set(gca,'XTick',[10 20 30 50] ); 
% % % xlabel('H')
% % % ylabel('%')
% % % legend('ATN T-LR','ATNT-KNN-3 ','ATNT-CENTROID','ATNT-SVM-1','ATNT-SVM-2','HAND-LR','HAND-KNN-3','HAND-CENTROID','HAND-SVM-1','HAND-SVM-2')
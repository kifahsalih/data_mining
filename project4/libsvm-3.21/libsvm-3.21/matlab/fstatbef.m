a = zeros(10,4);
a(1,1)= fstastics_hand(10,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'LR',0,0);
a(1,2)= fstastics_hand(20,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'LR',0,0);
a(1,3)= fstastics_hand(30,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'LR',0,0);
a(1,4)= fstastics_hand(50,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'LR',0,0);

a(2,1)= fstastics_hand(10,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'KNN',3,0);
a(2,2)= fstastics_hand(20,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'KNN',3,0);
a(2,3)= fstastics_hand(30,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'KNN',3,0);
a(2,4)= fstastics_hand(50,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'KNN',3,0);

a(3,1)= fstastics_hand(10,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'CENTROID',0,0);
a(3,2)= fstastics_hand(20,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'CENTROID',0,0);
a(3,3)= fstastics_hand(30,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'CENTROID',0,0);
a(3,4)= fstastics_hand(50,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'CENTROID',0,0);

a(4,1)= fstastics_hand(10,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'SVM',0,1);
a(4,2)= fstastics_hand(20,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'SVM',0,1);
a(4,3)=fstastics_hand(30,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'SVM',0,1);
a(4,4)=fstastics_hand(50,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'SVM',0,1);

a(5,1)=fstastics_hand(10,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'SVM',0,2);
a(5,2)=fstastics_hand(20,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'SVM',0,2);
a(5,3)=fstastics_hand(30,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'SVM',0,2);
a(5,4)=fstastics_hand(50,10,40,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt',5,'SVM',0,2);
%Hand written
a(6,1)=fstastics_hand(10,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'LR',0,0);
a(6,2)=fstastics_hand(20,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'LR',0,0);
a(6,3)=fstastics_hand(30,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'LR',0,0);
a(6,4)=fstastics_hand(50,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'LR',0,0);

a(7,1)=fstastics_hand(10,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'KNN',3,0);
a(7,2)=fstastics_hand(20,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'KNN',3,0);
a(7,3)=fstastics_hand(30,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'KNN',3,0);
a(7,4)=fstastics_hand(50,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'KNN',3,0);

a(8,1)=fstastics_hand(10,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'CENTROID',0,0);
a(8,2)=fstastics_hand(20,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'CENTROID',0,0);
a(8,3)=fstastics_hand(30,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'CENTROID',0,0);
a(8,4)=fstastics_hand(50,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'CENTROID',0,0);

a(9,1)=fstastics_hand(10,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'SVM',0,1);
a(9,2)=fstastics_hand(20,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'SVM',0,1);
a(9,3)=fstastics_hand(30,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'SVM',0,1);
a(9,4)=fstastics_hand(50,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'SVM',0,1);

a(10,1)=fstastics_hand(10,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'SVM',0,2);
a(10,2)=fstastics_hand(20,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'SVM',0,2);
a(10,3)=fstastics_hand(30,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'SVM',0,2);
a(10,4)=fstastics_hand(50,39,26,'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\HandWrittenLetters.txt',5,'SVM',0,2);


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
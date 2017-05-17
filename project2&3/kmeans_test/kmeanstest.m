clear all;clc;close all
handwritten= 'D:\projects\spring st se2 mining 2016\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\HandWrittenLetters.txt';
x = dlmread(handwritten);
train= x(2:end,1:end);
idx = kmeans(train', 26);

for i =0:25
x=(i*39)+1; y=39*(i+1);
a(i+1)=mode(idx(x:y));
end
fprintf 'most repeated class numbers for letter from  A-Z respectively \n';
a
fprintf 'class number shared for two alphabets';
mode(a)
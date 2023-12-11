% this file will create 3 vectors used for a plotting exercise
% and save them to the matlab data file 'data.mat'
% run with F5--matlab won't run until you are in the correct folder

clearvars; clc; 

t = 0:pi/50:10*pi; 
x = sin(t);
y = cos(t); 

save('data.mat')

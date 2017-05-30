clear;
clc;

image  = imread('src/img/Dogo.jpg');

A = double(image);

W = mean(A);


x = round(length(W)/60);
Z = W(1,6,1);
%M = mean(W(x,:));




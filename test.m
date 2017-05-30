clear;
clc;

image  = imread('src/img/Dogo.jpg');
A = double(image);

cols = length(A);
step = round(cols/60);
if cols > 60
    R = mean(A(:,(1:step:cols),1));
    G = mean(A(:,(1:step:cols),2));
    B = mean(A(:,(1:step:cols),3));
else
    R = mean(A(:,:,1));
    G = mean(A(:,:,2));
    B = mean(A(:,:,3));
end
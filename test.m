clear;
clc;

image  = imread('src/img/Dogo.jpg');
A = double(image);
M = mean(double(image));

R = mean(A(:,(1:round(length(M)/60):length(M)),1));
G = mean(A(:,(1:round(length(M)/60):length(M)),2));
B = mean(A(:,(1:round(length(M)/60):length(M)),3));

i = round(length(R)/60);
n = 1;
k = i;
while k < length(R)
    av_red = mean(M(:,n:k,1));
    %C(index,null,null) = av_red;
    n=n+i;
    k=k+i;
end
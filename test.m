clear;
clc;



[y,Fs] = audioread('src/chords/C#min7.wav');
[y1] = audioread('src/chords/Dm highest.wav');
[y2] = audioread('src/chords/Amin7.wav');
[y3] = audioread('src/chords/Dm highest.wav');

signal = [];
signal = [signal(1:length(signal),:);y(1:50000,:)];
signal = [signal(1:length(signal),:);y2(1:50000,:)];
signal = [signal(1:length(signal),:);y3(1:50000,:)];

plot(signal);
sound(signal,Fs);
%{
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
%}
clear;
clc;

% [y,fs] = audioread('src/chords/major C#.wav');
% [y1] = audioread('src/chords/major A.wav');
% signal = [y(1:100000,:); y1(1:100000,:)];
% 
% plot(signal);
% sound(signal,32768);
% grid;

image  = imread('src/img/Dogo.jpg');
% A = double(image);

signal = signalizer(image);

% rows = length(A(:,1,1));
% cols = length(A);
% step = 60;
% 
% W = mean(A(1:step:rows,1:step:cols,:));
% 
% R = mean(A(1:rows,1:cols,1));
% G = mean(A(1:rows,1:cols,2));
% B = mean(A(1:rows,1:cols,3));

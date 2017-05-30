%just testing stuff
clc;
clear;
ts = 0:0.001:8;
ts(length(ts)-1) =[];
F1 = [];

F1 = addSignal(300,ts,700,F1);
F1 = addSignal(300,ts,100,F1);
F1 = addSignal(300,ts,700,F1);
F1 = addSignal(300,ts,100,F1);


tss =0:0.001:length(F1)*(1/1000);
tss(length(tss)-1)=[];

image  = imread('Doggo.jpg');

signal = signalizer(image);
tss = 0:0.001:length(signal)*(1/1000);
tss(length(tss)-1)=[];
plot(tss, signal, 'r');

%txt = {'fdsaf','fdsafds','gfdgdf'};
%txt(length(txt)+1) = {'hello'};
%disp(txt)

%hold on;
%plot(tss,F1,'b')
%sound(F1);

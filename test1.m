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

image  = imread('Perro-Cachorro.jpg');

signal = signalizer(image, 8192);
tss = 0:0.001:length(signal)*(1/1000);
tss(length(tss)-1)=[];
plot(tss, signal, 'r');

dlmwrite('log.txt','1 not so bluere');
dlmwrite('log.txt','2 not so blue');
dlmwrite('log.txt','3 not so blue');

%txt = {'fdsaf','fdsafds','gfdgdf'};
%txt(length(txt)+1) = {'hello'};
%disp(txt)

%hold on;
%plot(tss,F1,'b')
%sound(F1);

%just testing stuff
%saca señal sinusoidal de frecuencia f0
ts = 0:0.001:8;
ts(length(ts)-1) =[];
F1 = [];

F1 = addSignal(300,ts,700,F1);
F1 = addSignal(300,ts,100,F1);
F1 = addSignal(300,ts,700,F1);
F1 = addSignal(300,ts,100,F1);


tss =0:0.001:length(F1)*(1/1000);
tss(length(tss)-1) =[];

txt = {'fdsaf','fdsafds','gfdgdf'};
txt(length(txt)+1) = {'hello'};
disp(txt)

hold on;
plot(tss,F1,'b')
%sound(F1);

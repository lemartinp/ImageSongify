%just testing stuff
%saca señal sinusoidal de frecuencia f0
f1 = 2;
f2 = 4;
ts = 0:0.001:8;
ts(length(ts)-1) =[];
F1 = sin(f1*ts*2*pi);
F2 = sin(f2*ts*2*pi);
F1 = [F1,F2];

F1 = addSignal(5,ts,F1);
F1 = addSignal(1,ts,F1);
F1 = addSignal(3,ts,F1);
F1 = addSignal(7,ts,F1);


tss =0:0.001:length(F1)*(1/1000);
tss(length(tss)-1) =[];

txt = [];
txt = [txt,'ffdsdf'];
disp(txt)

hold on;
plot(tss,F1,'b')
sound(F1);

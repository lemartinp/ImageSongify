clear;
clc;

%{
%just testing stuff
%saca señal sinusoidal de frecuencia f0
f1 = 2;
f2 = 4;
ts = 0:0.001:8;
ts(length(ts)-1) =[];
F1 = sin(f1*ts*2*pi);
F2 = sin(f2*ts*2*pi);
F1 = [F1,F2];

tss =0:0.001:length(F1)*(1/1000);
tss(length(tss)-1) =[];

hold on;
plot(tss,F1,'b')
%}

[X,map]  = imread('g.jpg');
%image(X);
A = double(X);
disp(length(A))
%B = A(:);
R = A(:,5,1);
G = A(:,5,2);   
B = A(:,5,3);
%sound(R); %Fs = 8192 hertz.
Fs = 8192;
N = length(R);
t = linspace(0, N/Fs, N);
subplot(2,1,1);
plot(t, R, 'r',t, G, 'g',t, B, 'b');
ts = 0:0.001:5;
ts(length(ts)-1) =[];
signal = [];
txt = [];
%image(X);
i = 1;
while i < length(R)
    
    red = R(i);
    green = G(i);
    blue = B(i);
    if (red > 191)
        txt = [txt, 'reddish'];
        if (green > 191)
            txt = [txt, 'greenish'];
            if (blue > 191)
                txt = [txt, 'blueish'];
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
            else
                txt = [txt, 'not so blue'];
                signal = addSignal(466,ts,585,signal);
            end
        elseif (green < 191) && (green > 63)
            txt = [txt, 'kinda green'];
            if (blue > 191)
                txt = [txt, 'blueish'];
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
            else
                txt = [txt, 'not so blue'];
                signal = addSignal(440,ts,620,signal);
            end
        else
            txt = [txt, 'not so green'];
            if (blue > 191)
                txt = [txt, 'blueish'];
                signal = addSignal(523.25,ts,1,signal);
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
                signal = addSignal(554.37,ts,1,signal);
            else
                txt = [txt, 'not so blue'];
                signal = addSignal(415,ts,657,signal);
            end
        end
    elseif (red < 191) && (red > 63)
        txt = [txt, 'kinda red'];
        if (green > 191)
            txt = [txt, 'greenish'];
            if (blue > 191)
                txt = [txt, 'blueish'];
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
            else
                txt = [txt, 'not so blue'];
                signal = addSignal(494,ts,552,signal);
            end
        elseif (green < 191) && (green > 63)
            txt = [txt, 'kinda green'];
            if (blue > 191)
                txt = [txt, 'blueish'];
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
            else
                txt = [txt, 'not so blue'];
            end
        else
            txt = [txt, 'not so green'];
            if (blue > 191)
                txt = [txt, 'blueish'];
                signal = addSignal(659,ts,414,signal);
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
                signal = addSignal(698,ts,390,signal);
            else
                txt = [txt, 'not so blue'];
                signal = addSignal(370,ts,737,signal);
            end
        end
    else
        txt = [txt, 'not so red'];
        if (green > 191)
            txt = [txt, 'greenish'];
            if (blue > 191)
                txt = [txt, 'blueish'];
                signal = addSignal(554,ts,492,signal);
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
                signal = addSignal(5,ts,1,signal);
            else
                txt = [txt, 'not so blue'];
                signal = addSignal(523,ts,521,signal);
            end
        elseif (green < 191) && (green > 63)
            txt = [txt, 'kinda green'];
            if (blue > 191)
                txt = [txt, 'blueish'];
                signal = addSignal(587,ts,464,signal);
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
            else
                txt = [txt, 'not so blue'];
            end
        else
            txt = [txt, 'not so green'];
            if (blue > 191)
                txt = [txt, 'blueish'];
                signal = addSignal(622,ts,438,signal);
            elseif (blue < 191) && (blue > 63)
                txt = [txt, 'kinda blue'];
            else
                txt = [txt, 'not so blue'];
            end
        end
    end
    i = i + 1;
end

tss = 0:0.001:length(signal)*(1/1000);
tss(length(tss)-1) =[];
subplot(2,1,2);
plot(tss, signal, 'r');
%sound(signal);
fileID = fopen('log.txt', 'w');
formatSpec = '%s \n';
for e = length(txt)
    fprintf(fileID, formatSpec, txt(e));
end
fclose(fileID);
type log.txt

%{
Tam=size(B);
for i=1:Tam(1)
   M=round(rand*10);
   if mod(M,2)==0
   B(i)=B(i)*-1; 
   end
end
nBits = 16;
%sound(B,8192,nBits);
Fs = 40000;            % Sampling frequency
T = 1/Fs;             % Sampling period
L = 1000;             % Length of signal
t = (0:L-1)*T; 
Y = fft(B);
plot(1000*t(1:100),B(1:100))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')
%}
sound(y)
sound(y,Fs)
sound(y,Fs,nBits)

Fs = 40000;            % Sampling frequency
T = 1/Fs;             % Sampling period
L = 1000;             % Length of signal
t = (0:L-1)*T; 
Y = fft(Y);
plot(1000*t(1:100),Y(1:100))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')
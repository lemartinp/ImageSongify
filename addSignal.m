function signal = addSignal(f1,ts,wl,signal)
    F1 = wl*sin(f1*ts*2*pi);
    signal = [signal, F1];
end


function signal = addSignal(f1,ts,signal)
    F1 = sin(f1*ts*2*pi);
    signal = [signal, F1];
    disp('se�al agregada')
end


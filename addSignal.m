function signal = addSignal(chord,ts,signal)
    if strcmp(chord,'A-')
        f1 = 440.00;
        wl = 78.41;
    elseif strcmp(chord,'A+')
        f1 = 880.00;
        wl = 39.20;
    elseif strcmp(chord,'Ab-')
        f1 = 830.61;
        wl = 41.54;
    elseif strcmp(chord,'Ab+')
        f1 = 1661.22;
        wl = 20.77;
    elseif strcmp(chord,'B-')
        f1 = 493.88;
        wl = 69.85;
    elseif strcmp(chord,'B+')
        f1 = 987.77;
        wl = 34.93;
    elseif strcmp(chord,'Bb-')
        f1 = 466.16;
        wl = 74.01;
    elseif strcmp(chord,'Bb+')
        f1 = 932.33;
        wl = 37.00;
    elseif strcmp(chord,'C-')
        f1 = 523.25;
        wl = 65.93;
    elseif strcmp(chord,'C+')
        f1 = 1046.50;
        wl = 32.97;
    elseif strcmp(chord,'D-')
        f1 = 587.33;
        wl = 58.74;
    elseif strcmp(chord,'Db+')
        f1 = 1108.73;
        wl = 31.12;
    elseif strcmp(chord,'D#-')
        f1 = 622.25;
        wl = 55.44;
    elseif strcmp(chord,'Eb+')
        f1 = 1244.51;
        wl = 27.72;
    elseif strcmp(chord,'F-')
        f1 = 698.46;
        wl = 49.39;
    elseif strcmp(chord,'F+')
        f1 = 1396.91;
        wl = 24.70;
    elseif strcmp(chord,'F#-')
        f1 = 739.99;
        wl = 46.62;
    elseif strcmp(chord,'G+')
        f1 = 1567.98;
        wl = 22.00;
    end
    
    F1 = wl*sin(f1*ts*pi);
    signal = [signal, F1];
end


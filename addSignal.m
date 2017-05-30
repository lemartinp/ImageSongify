function signal = addSignal(chord,ts,signal)
    if strcmp(chord,'A-')
        [y,f1] = audioread('src/chords/minor chords - A#m lowest.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        
        wl = 78.41;
    elseif strcmp(chord,'A+')
        
        [y,f1] = audioread('src/chords/major A.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        
        wl = 39.20;
    elseif strcmp(chord,'Ab-')
        
        [y,f1] = audioread('src/chords/minor chords - Am lower.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];

        wl = 41.54;
    elseif strcmp(chord,'Ab+')
        
        [y,f1] = audioread('src/chords/major A#.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 20.77;
    elseif strcmp(chord,'B-')
        
        [y,f1] = audioread('src/chords/major A#.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 69.85;
    elseif strcmp(chord,'B+')
        
        [y,f1] = audioread('src/chords/major B.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 34.93;
    elseif strcmp(chord,'Bb-')
        
        [y,f1] = audioread('src/chords/minor chords - A#m lower.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 74.01;
    elseif strcmp(chord,'Bb+')
        
        [y,f1] = audioread('src/chords/minor chords - A#m highest.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 37.00;
    elseif strcmp(chord,'C-')
        
        [y,f1] = audioread('src/chords/minor chords - Cm lower.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 65.93;
    elseif strcmp(chord,'C+')
        
        [y,f1] = audioread('src/chords/major C middle.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 32.97;
    elseif strcmp(chord,'D-')
        
        [y,f1] = audioread('src/chords/minor chords - D#m lower.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 58.74;
    elseif strcmp(chord,'Db+')
        
        [y,f1] = audioread('src/chords/major C#.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 31.12;
    elseif strcmp(chord,'D#-')
        
        [y,f1] = audioread('src/chords/minor chords - D#m lowest.wav');
        signal = [signal(1:length(signal),:);y(8000:15000,:)];
        wl = 55.44;
    elseif strcmp(chord,'Eb+')
        
        [y,f1] = audioread('src/chords/major D#.wav');
        signal = [signal(1:length(signal),:);y(2000:10000,:)];
        wl = 27.72;
    elseif strcmp(chord,'F-')
        
        [y,f1] = audioread('src/chords/minor chords - F#m lower.wav');
        signal = [signal(1:length(signal),:);y(2000:10000,:)];
        wl = 49.39;
    elseif strcmp(chord,'F+')
        
        [y,f1] = audioread('src/chords/major F.wav');
        signal = [signal(1:length(signal),:);y(2000:10000,:)];
        wl = 24.70;
    elseif strcmp(chord,'F#-')
        
        [y,f1] = audioread('src/chords/minor chords - F#m lowest.wav');
        signal = [signal(1:length(signal),:);y(2000:10000,:)];
        wl = 46.62;
    elseif strcmp(chord,'G+')
        
        [y,f1] = audioread('src/chords/major G.wav');
        signal = [signal(1:length(signal),:);y(2000:10000,:)];
        wl = 22.00;
    end
    
    %F1 = wl*sin(f1*ts*pi);
    %signal = [signal, F1];
end


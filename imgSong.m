function imgSong(file)
    X  = imread(file);
    Fs = 8192;
    A = double(X);
    R = A(:,5,1);
    G = A(:,5,2);   
    B = A(:,5,3);
    signal = [];
    while i < length(R)
        red = R(i);
        green = G(i);
        blue = B(i);
        if (red > 191)
            txt(length(txt)+1) = {'reddish'};
            if (green > 191)
                txt(length(txt)+1) = {'greenish'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                else
                    txt(length(txt)+1) = {'not so blue'};
                    signal = addSignal(466,ts,585,signal);
                    txt(length(txt)+1) = {'signal added'};
                end
            elseif (green < 191) && (green > 63)
                txt(length(txt)+1) = {'kinda green'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                else
                    txt(length(txt)+1) = {'not so blue'};
                    signal = addSignal(440,ts,620,signal);
                    txt(length(txt)+1) = {'signal added'};
                end
            else
                txt(length(txt)+1) = {'not so green'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                    signal = addSignal(523.25,ts,1,signal);
                    txt(length(txt)+1) = {'signal added'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                    signal = addSignal(554.37,ts,1,signal);
                    txt(length(txt)+1) = {'signal added'};
                else
                    txt(length(txt)+1) = {'not so blue'};
                    signal = addSignal(415,ts,657,signal);
                    txt(length(txt)+1) = {'signal added'};
                end
            end
        elseif (red < 191) && (red > 63)
            txt(length(txt)+1) = {'kinda red'};
            if (green > 191)
                txt(length(txt)+1) = {'greenish'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                else
                    txt(length(txt)+1) = {'not so blue'};
                    signal = addSignal(494,ts,552,signal);
                    txt(length(txt)+1) = {'signal added'};
                end
            elseif (green < 191) && (green > 63)
                txt(length(txt)+1) = {'kinda green'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                else
                    txt(length(txt)+1) = {'not so blue'};
                end
            else
                txt(length(txt)+1) = {'not so green'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                    signal = addSignal(659,ts,414,signal);
                    txt(length(txt)+1) = {'signal added'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                    signal = addSignal(698,ts,390,signal);
                    txt(length(txt)+1) = {'signal added'};
                else
                    txt(length(txt)+1) = {'not so blue'};
                    signal = addSignal(370,ts,737,signal);
                    txt(length(txt)+1) = {'signal added'};
                end
            end
        else
            txt(length(txt)+1) = {'not so red'};
            if (green > 191)
                txt(length(txt)+1) = {'greenish'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                    signal = addSignal(554,ts,492,signal);
                    txt(length(txt)+1) = {'signal added'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                    signal = addSignal(5,ts,1,signal);
                else
                    txt(length(txt)+1) = {'not so blue'};
                    signal = addSignal(523,ts,521,signal);
                    txt(length(txt)+1) = {'signal added'};
                end
            elseif (green < 191) && (green > 63)
                txt(length(txt)+1) = {'kinda green'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                    signal = addSignal(587,ts,464,signal);
                    txt(length(txt)+1) = {'signal added'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                else
                    txt(length(txt)+1) = {'not so blue'};
                end
            else
                txt(length(txt)+1) = {'not so green'};
                if (blue > 191)
                    txt(length(txt)+1) = {'blueish'};
                    signal = addSignal(622,ts,438,signal);
                    txt(length(txt)+1) = {'signal added'};
                elseif (blue < 191) && (blue > 63)
                    txt(length(txt)+1) = {'kinda blue'};
                else
                    txt(length(txt)+1) = {'not so blue'};
                end
            end
        end
        i = i + 1;
    end
end

end
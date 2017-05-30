function signal = signalizer(image)
    A = double(image);

    signal = [];
    x = 2;
    txt = ['ImageSongify log:\n','\n'];

    while x < length(A)
        R = A(:,x,1);
        G = A(:,x,2);
        B = A(:,x,3);

        ts = 0:0.001:1;
        ts(length(ts)-1) =[];

        i = 1;
        while i < length(R)
            red = R(i);
            green = G(i);
            blue = B(i);

            if (red > 191)
                txt = [txt, 'reddish\n'];
                if (green > 191)
                    txt = [txt,'greenish\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('C+',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('F+',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('G+',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                elseif (green < 191) && (green > 63)
                    txt = [txt,'kinda green\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('A-',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('A+',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('Bb+',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                else
                    txt = [txt,'not so green\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('Db+',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('C-',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('B+',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                end
            elseif (red < 191) && (red > 63)
                txt = [txt,'kinda red\n'];
                if (green > 191)
                    txt = [txt,'greenish\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('A+',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('Eb+',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('B-',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                elseif (green < 191) && (green > 63)
                    txt = [txt,'kinda green\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('C+',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('Bb-',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('D#-',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                else
                    txt = [txt,'not so green\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('Db+',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('F-',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('Ab+',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                end
            else
                txt = [txt,'not so red\n'];
                if (green > 191)
                    txt = [txt,'greenish\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('A+',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('F#-',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('B-',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                elseif (green < 191) && (green > 63)
                    txt = [txt,'kinda green\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('F+',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('F-',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('D-',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                else
                    txt = [txt,'not so green\n'];
                    if (blue > 191)
                        txt = [txt,'blueish\n'];
                        signal = addSignal('C+',ts,signal);
                        txt = [txt,'signal added\n'];
                    elseif (blue < 191) && (blue > 63)
                        txt = [txt,'kinda blue\n'];
                        signal = addSignal('Ab-',ts,signal);
                        txt = [txt,'signal added\n'];
                    else
                        txt = [txt,'not so blue\n'];
                        signal = addSignal('D#-',ts,signal);
                        txt = [txt,'signal added\n'];
                    end
                end
            end
            i = i + 1;
        end
        x = x + 1;
    end
    fileID = fopen('log.txt','w');
    fprintf(fileID,txt);
end
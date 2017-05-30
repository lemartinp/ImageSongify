function varargout = UI(varargin)
    gui_Singleton = 1;
    gui_State = struct('gui_Name',       mfilename, ...
                       'gui_Singleton',  gui_Singleton, ...
                       'gui_OpeningFcn', @UI_OpeningFcn, ...
                       'gui_OutputFcn',  @UI_OutputFcn, ...
                       'gui_LayoutFcn',  [] , ...
                       'gui_Callback',   []);
    if nargin && ischar(varargin{1})
        gui_State.gui_Callback = str2func(varargin{1});
    end

    if nargout
        [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
    else
        gui_mainfcn(gui_State, varargin{:});
    end
% -------------End initialization code - DO NOT EDIT-----------------------

% --- Executes just before UI is made visible.
function UI_OpeningFcn(hObject, eventdata, handles, varargin)
    % Choose default command line output for UI
    handles.output = hObject;

    % Update handles structure
    guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = UI_OutputFcn(hObject, eventdata, handles) 
    % Get default command line output from handles structure
    varargout{1} = handles.output;
    
% --------------------------MANAGE OF ACTIONS------------------------------

% --- Executes on button press in upImgBtn.
function upImgBtn_Callback(hObject, eventdata, handles)
    global img
    
    cla(handles.imageAxes,'reset');
    cla(handles.plotAxes,'reset');
    [filename, pathname] = uigetfile({'*.*';'*.png';'*.jpg'},'Choose the Image to Upload');
    img = imread([pathname, filename]);
    imshow(img,'Parent',handles.imageAxes);
    
    set(handles.imgToSoundBtn,'Enable','on');

% --- Executes on button press in soundBtn.
function soundBtn_Callback(hObject, eventdata, handles)
    global signal
    global fs
    global player

    player = audioplayer(signal, fs);
    play(player);

    set(handles.stopBtn,'Enable','on');

% --- Executes on button press in stopBtn.
function stopBtn_Callback(hObject, eventdata, handles)
    global player
    
    stop(player);
    
    set(handles.stopBtn,'Enable','off');
    set(handles.soundBtn,'Enable','on');
    
% --- Executes on button press in saveBtn.
function saveBtn_Callback(hObject, eventdata, handles)
    global signal
    global fs
   
    [file,path] = uiputfile({'*.wav'},'Save song');
    audiowrite([path, file],signal,fs);
    msgbox(['Your ImageSongify has been saved at ',path,file],'File saved');
    
% --- Executes on button press in imgToSoundBtn.
function imgToSoundBtn_Callback(hObject, eventdata, handles)
    global img
    global signal
    global fs
    
    cla(handles.plotAxes, 'reset');
    frecuency = get(handles.Fs,'String');
    fs = str2double(frecuency);
    axes(handles.plotAxes);
    signal = signalizer(img);
    tss = 0:0.001:length(signal)*(1/1000);
    tss(length(tss)-1)=[];
    plot(tss, signal, 'r');
    grid;
    
    set(handles.soundBtn,'Enable','on');
    set(handles.saveBtn,'Enable','on');
    set(handles.stopBtn,'Enable','off');

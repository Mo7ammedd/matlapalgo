function varargout = CaesarCipherCode(varargin)
% CAESARCIPHERCODE MATLAB code for CaesarCipherCode.fig
%      CAESARCIPHERCODE, by itself, creates a new CAESARCIPHERCODE or raises the existing
%      singleton*.
%
%      H = CAESARCIPHERCODE returns the handle to a new CAESARCIPHERCODE or the handle to
%      the existing singleton*.
%
%      CAESARCIPHERCODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAESARCIPHERCODE.M with the given input arguments.
%
%      CAESARCIPHERCODE('Property','Value',...) creates a new CAESARCIPHERCODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CaesarCipherCode_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CaesarCipherCode_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CaesarCipherCode

% Last Modified by GUIDE v2.5 17-May-2022 09:28:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CaesarCipherCode_OpeningFcn, ...
                   'gui_OutputFcn',  @CaesarCipherCode_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before CaesarCipherCode is made visible.
function CaesarCipherCode_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CaesarCipherCode (see VARARGIN)

% Choose default command line output for CaesarCipherCode
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CaesarCipherCode wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CaesarCipherCode_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Plaintext=get(handles.edit1,'string');
k=str2double(get(handles.edit2,'string'));
        if k>25 || k<1
            disp('Key must be in range from 1 to 25')
        else 
            
            for i= 1:length(Plaintext)
            %once he found a space, skip this iteration, ASCII of space=32
                 if (Plaintext(i)==32)
                     continue;
                 end
    
                 %using addition to find cipherletter "using ASCII code for letters"
                 %a=97  , z=122
                 Ciphertext(i)=Plaintext(i)+k;
            
                 if Ciphertext(i) >122
                    Ciphertext(i)=Ciphertext(i)-26;
                 end
    
         end
         Ciphertext=upper(char(Ciphertext));
        set(handles.edit3,'string',Ciphertext)
        end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 Ciphertext=get(handles.edit3,'string');
 k=str2double(get(handles.edit2,'string'));
         if k>25 || k<1
        disp('Key must be in range from 1 to 25')

    else
    
            for i= 1:length(Ciphertext)
            %once he found a space, skip this iteration, ASCII of space=32
            if (Ciphertext(i)==32)
                continue;
            end
    
             %using addition to find cipherletter "using ASCII code for letters"
             %A=65  , Z=90
            Plaintext(i)=Ciphertext(i)-k;
            
            if Plaintext(i) <65
                Plaintext(i)=Plaintext(i)+26;
            end
    
        end
        Plaintext=lower(char(Plaintext));
        set(handles.edit1,'string',Plaintext)
    end

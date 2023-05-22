function varargout = Hill(varargin)
% HILL MATLAB code for Hill.fig
%      HILL, by itself, creates a new HILL or raises the existing
%      singleton*.
%
%      H = HILL returns the handle to a new HILL or the handle to
%      the existing singleton*.
%
%      HILL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HILL.M with the given input arguments.
%
%      HILL('Property','Value',...) creates a new HILL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Hill_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Hill_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Hill

% Last Modified by GUIDE v2.5 18-May-2022 17:19:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Hill_OpeningFcn, ...
                   'gui_OutputFcn',  @Hill_OutputFcn, ...
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


% --- Executes just before Hill is made visible.
function Hill_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Hill (see VARARGIN)

% Choose default command line output for Hill
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Hill wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Hill_OutputFcn(hObject, eventdata, handles) 
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



function gm_Callback(hObject, eventdata, handles)
% hObject    handle to gm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gm as text
%        str2double(get(hObject,'String')) returns contents of gm as a double


% --- Executes during object creation, after setting all properties.
function gm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function result_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
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
k=str2num(get(handles.gm,'string'));
 lenk=size(k,2);
    %reshape( plaintext, D:ws, D:cols)
    Ciphertext=reshape(Plaintext,[],lenk)*0;
    [nr,ncol]=size(Ciphertext);
    
    x=1;
    for j=1:nr
        for i=1:ncol
              Ciphertext(j,i)=Plaintext(x)
              x=x+1;
        end  
    end
    
      %a=97  , z=122    
      Ciphertext=Ciphertext-97
      Ciphertext=upper(char(mod(Ciphertext*k,26)+97));
     
    h=1;
    for j=1:nr
        for i=1:ncol
            m(1,h)=Ciphertext(j,i);
            h=h+1;
        end  
    end
     Ciphertext=m;
     set(handles.result,'string',Ciphertext)

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ciphertext=get(handles.result,'string');
k=str2num(get(handles.gm,'string'));
lenk=size(k,2);
plaintext=reshape(ciphertext,[],lenk)*0;
[nr,ncol]=size(plaintext);
% convert ciphertext from vector to matrix

x=1;
for j=1:nr
    for i=1:ncol
          plaintext(j,i)=ciphertext(x);
          x=x+1;
    end
end
%A=65  , Z=90
plaintext=plaintext-65;

%find the inverse of determinant

%int16 : Type
dk=int16(mod(det(k),26));

if gcd(dk,26) ~= 1
    disp('determinant has no inverse modulo 26')
    
else 
[~,u,~]= gcd(dk,26);
inverse_dk= mod(u,26);
end

%find Minor and cofactor of key matrix (adjugate matrix)
key_t=k';
adjugate_key=int16((det(key_t)*inv(key_t))');

%key inverse=(Det(key))^-1 . Adj(Key) mode 26
key_inverse=mod(inverse_dk*adjugate_key,26);

%Decryption p=c*k^-1 mod26
plaintext=lower(char((mod(plaintext*double(key_inverse),26)+65)));

h=1;
for j=1:nr
    for i=1:ncol
        pl(1,h)=plaintext(j,i);
        h=h+1;
    end  
end
plaintext=pl;
set(handles.edit1,'string',plaintext)

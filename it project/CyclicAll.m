function varargout = CyclicAll(varargin)
% CYCLICALL MATLAB code for CyclicAll.fig
%      CYCLICALL, by itself, creates a new CYCLICALL or raises the existing
%      singleton*.
%
%      H = CYCLICALL returns the handle to a new CYCLICALL or the handle to
%      the existing singleton*.
%
%      CYCLICALL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CYCLICALL.M with the given input arguments.
%
%      CYCLICALL('Property','Value',...) creates a new CYCLICALL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CyclicAll_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CyclicAll_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CyclicAll

% Last Modified by GUIDE v2.5 23-May-2022 10:21:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CyclicAll_OpeningFcn, ...
                   'gui_OutputFcn',  @CyclicAll_OutputFcn, ...
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


% --- Executes just before CyclicAll is made visible.
function CyclicAll_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CyclicAll (see VARARGIN)

% Choose default command line output for CyclicAll
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CyclicAll wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CyclicAll_OutputFcn(hObject, eventdata, handles) 
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
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
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
close


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

val=get(handles.listbox1,'value')
switch val
    case 1
        u=str2num(get(handles.edit1,'string'))
        g=str2num(get(handles.edit2,'string'))
        gx=poly2sym(g)
        ux=poly2sym(u)
        v=fliplr(mod(sym2poly(gx*ux),2))
        set(handles.edit3,'string',mat2str(v))
        
    case 2
        u=str2num(get(handles.edit1,'string'))
        g=str2num(get(handles.edit2,'string'))
       %u=[1 1 0 1], or u=[1 0 1 0] v(x)=x+x^2+x^3+x^5 [0 1 1 1 0 1 0], g(x)=1+x^2+x^3

%delta=u(x).x^n-k
% delta/g(x) -> remainder=b(x)
%v(x)=b(x)+delta

%Cyclic EnCode in systematic Form by using generator polynomial Equation 

%Check u is binary
if mod(u,2)==u
    k=length(u)
    %poly2sym fun is used to write polynomial equation of binary vector g[1 0 1 1] but write it in reverse order [1 1 0 1] to get the right equation, Message [1 1 0 1]->[1 0 1 1]
    
    gx=poly2sym(g)
    ux=poly2sym(u)
    
    %find is used to get index of non zero elements in vector g which will be in ex:1 2 4
    polyPowers = find(g) - 1
    paritybits=max(polyPowers)
    n=k+paritybits
    
    %syms Create symbolic variables, expressions, functions, matrices
    %expand multiplies all parentheses in inputs
    syms x
    power=x^paritybits
    delta_ux=expand(ux*power)
    
    %sym2poly returns the numeric vector of coefficients of the symbolic polynomial 
    delta_uxb=sym2poly(delta_ux)
    
    %when you use deconv function  parameters must be vestors"Binary"
    %fliplr Flip array left to right
    
    [Result,b]=deconv(delta_uxb,g)
    rx=poly2sym(mod(Result,2))
    bx=poly2sym(mod(b,2))
    v=fliplr(sym2poly(bx+delta_ux))
    set(handles.edit3,'string',mat2str(v))
     
    if length(v)< n
        v(n)=0; 
    end
     
else
    disp('u must be a binary')
end
    case 3
        u=str2num(get(handles.edit1,'string'))
        g=str2num(get(handles.edit2,'string'))


if mod(u,2)==u
    k=length(u)
    %poly2sym fun is used to write polynomial equation of binary vector g[1 0 1 1] but write it in reverse order [1 1 0 1] to get the right equation
    gx=poly2sym(g)
    %find is used to get index of non zero elements in vector g which will be in ex:1 2 4
    polyPowers = find(g) - 1;
    paritybits=max(polyPowers);
    n=k+paritybits;
    
    v=zeros([1,paritybits])
    v=[v u] 
    
    syms x
    zx=x^n+1
    
    %sym2poly returns the numeric vector of coefficients of the symbolic polynomial 
    %when you use deconv function  parameters must be vestors"Binary"
    %fliplr Flip array left to right
    
    zxb=sym2poly(zx)
    [h,r]=deconv(zxb,g)
    h=mod(h,2)
    hx=poly2sym(h)
    hcoeff=fliplr(h)
    
    %index in matlab for vector start from 1 
    m=hcoeff(1:paritybits+1)
    x=length(v)
    y=length(u)
    for j=0:paritybits-1
        v(paritybits-j)=sum(m.*v(x:-1:y));
        v(paritybits-j)=mod(v(paritybits-j),2)
        x=x-1;
        y=y-1;
    end 
  
else
    disp('u must be a binary')
end
   set(handles.edit3,'string',mat2str(v))
end


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

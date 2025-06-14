function varargout = callback(varargin)
% CALLBACK MATLAB code for callback.fig
%      CALLBACK, by itself, creates a new CALLBACK or raises the existing
%      singleton*.
%
%      H = CALLBACK returns the handle to a new CALLBACK or the handle to
%      the existing singleton*.
%
%      CALLBACK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALLBACK.M with the given input arguments.
%
%      CALLBACK('Property','Value',...) creates a new CALLBACK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before callback_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to callback_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help callback

% Last Modified by GUIDE v2.5 14-Mar-2025 03:23:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @callback_OpeningFcn, ...
                   'gui_OutputFcn',  @callback_OutputFcn, ...
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


% --- Executes just before callback is made visible.
function callback_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to callback (see VARARGIN)

% Choose default command line output for callback
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes callback wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = callback_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName = 'manipulator_rtbx';
open_system(ModelName);
set_param(ModelName, 'BlockReduction', 'off');
set_param(ModelName,'StopTime', 'inf');
set_param(ModelName,'simulationMode', 'normal');
set_param(ModelName,'StartFcn','1');
set_param(ModelName,'SimulationCommand','start');


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ModelName = 'manipulator_rtbx';
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
theta7=get(handles.slider7,'value');

set(handles.edit1,'string',num2str(theta1));
set(handles.edit2,'string',num2str(theta2));
set(handles.edit3,'string',num2str(theta3));
set(handles.edit4,'string',num2str(theta4));
set(handles.edit5,'string',num2str(theta5));
set(handles.edit6,'string',num2str(theta6));
set(handles.edit7,'string',num2str(theta7));

set_param([ModelName '/Gain'], 'Gain', num2str(theta1));
set_param([ModelName '/Gain1'], 'Gain', num2str(theta2));
set_param([ModelName '/Gain2'], 'Gain', num2str(theta3));
set_param([ModelName '/Gain3'], 'Gain', num2str(theta4));
set_param([ModelName '/Gain4'], 'Gain', num2str(theta5));
set_param([ModelName '/Gain5'], 'Gain', num2str(theta6));
set_param([ModelName '/Gain6'], 'Gain', num2str(theta7));

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ModelName = 'manipulator_rtbx';
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
theta7=get(handles.slider7,'value');

set(handles.edit1,'string',num2str(theta1));
set(handles.edit2,'string',num2str(theta2));
set(handles.edit3,'string',num2str(theta3));
set(handles.edit4,'string',num2str(theta4));
set(handles.edit5,'string',num2str(theta5));
set(handles.edit6,'string',num2str(theta6));
set(handles.edit7,'string',num2str(theta7));

set_param([ModelName '/Gain'], 'Gain', num2str(theta1));
set_param([ModelName '/Gain1'], 'Gain', num2str(theta2));
set_param([ModelName '/Gain2'], 'Gain', num2str(theta3));
set_param([ModelName '/Gain3'], 'Gain', num2str(theta4));
set_param([ModelName '/Gain4'], 'Gain', num2str(theta5));
set_param([ModelName '/Gain5'], 'Gain', num2str(theta6));
set_param([ModelName '/Gain6'], 'Gain', num2str(theta7));



% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


ModelName = 'manipulator_rtbx';
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
theta7=get(handles.slider7,'value');

set(handles.edit1,'string',num2str(theta1));
set(handles.edit2,'string',num2str(theta2));
set(handles.edit3,'string',num2str(theta3));
set(handles.edit4,'string',num2str(theta4));
set(handles.edit5,'string',num2str(theta5));
set(handles.edit6,'string',num2str(theta6));
set(handles.edit7,'string',num2str(theta7));

set_param([ModelName '/Gain'], 'Gain', num2str(theta1));
set_param([ModelName '/Gain1'], 'Gain', num2str(theta2));
set_param([ModelName '/Gain2'], 'Gain', num2str(theta3));
set_param([ModelName '/Gain3'], 'Gain', num2str(theta4));
set_param([ModelName '/Gain4'], 'Gain', num2str(theta5));
set_param([ModelName '/Gain5'], 'Gain', num2str(theta6));
set_param([ModelName '/Gain6'], 'Gain', num2str(theta7));



% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ModelName = 'manipulator_rtbx';
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
theta7=get(handles.slider7,'value');

set(handles.edit1,'string',num2str(theta1));
set(handles.edit2,'string',num2str(theta2));
set(handles.edit3,'string',num2str(theta3));
set(handles.edit4,'string',num2str(theta4));
set(handles.edit5,'string',num2str(theta5));
set(handles.edit6,'string',num2str(theta6));
set(handles.edit7,'string',num2str(theta7));

set_param([ModelName '/Gain'], 'Gain', num2str(theta1));
set_param([ModelName '/Gain1'], 'Gain', num2str(theta2));
set_param([ModelName '/Gain2'], 'Gain', num2str(theta3));
set_param([ModelName '/Gain3'], 'Gain', num2str(theta4));
set_param([ModelName '/Gain4'], 'Gain', num2str(theta5));
set_param([ModelName '/Gain5'], 'Gain', num2str(theta6));
set_param([ModelName '/Gain6'], 'Gain', num2str(theta7));


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ModelName = 'manipulator_rtbx';
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
theta7=get(handles.slider7,'value');

set(handles.edit1,'string',num2str(theta1));
set(handles.edit2,'string',num2str(theta2));
set(handles.edit3,'string',num2str(theta3));
set(handles.edit4,'string',num2str(theta4));
set(handles.edit5,'string',num2str(theta5));
set(handles.edit6,'string',num2str(theta6));
set(handles.edit7,'string',num2str(theta7));

set_param([ModelName '/Gain'], 'Gain', num2str(theta1));
set_param([ModelName '/Gain1'], 'Gain', num2str(theta2));
set_param([ModelName '/Gain2'], 'Gain', num2str(theta3));
set_param([ModelName '/Gain3'], 'Gain', num2str(theta4));
set_param([ModelName '/Gain4'], 'Gain', num2str(theta5));
set_param([ModelName '/Gain5'], 'Gain', num2str(theta6));
set_param([ModelName '/Gain6'], 'Gain', num2str(theta7));

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ModelName = 'manipulator_rtbx';
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
theta7=get(handles.slider7,'value');

set(handles.edit1,'string',num2str(theta1));
set(handles.edit2,'string',num2str(theta2));
set(handles.edit3,'string',num2str(theta3));
set(handles.edit4,'string',num2str(theta4));
set(handles.edit5,'string',num2str(theta5));
set(handles.edit6,'string',num2str(theta6));
set(handles.edit7,'string',num2str(theta7));

set_param([ModelName '/Gain'], 'Gain', num2str(theta1));
set_param([ModelName '/Gain1'], 'Gain', num2str(theta2));
set_param([ModelName '/Gain2'], 'Gain', num2str(theta3));
set_param([ModelName '/Gain3'], 'Gain', num2str(theta4));
set_param([ModelName '/Gain4'], 'Gain', num2str(theta5));
set_param([ModelName '/Gain5'], 'Gain', num2str(theta6));
set_param([ModelName '/Gain6'], 'Gain', num2str(theta7));

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

ModelName = 'manipulator_rtbx';
theta1=get(handles.slider1,'value');
theta2=get(handles.slider2,'value');
theta3=get(handles.slider3,'value');
theta4=get(handles.slider4,'value');
theta5=get(handles.slider5,'value');
theta6=get(handles.slider6,'value');
theta7=get(handles.slider7,'value');

set(handles.edit1,'string',num2str(theta1));
set(handles.edit2,'string',num2str(theta2));
set(handles.edit3,'string',num2str(theta3));
set(handles.edit4,'string',num2str(theta4));
set(handles.edit5,'string',num2str(theta5));
set(handles.edit6,'string',num2str(theta6));
set(handles.edit7,'string',num2str(theta7));

set_param([ModelName '/Gain'], 'Gain', num2str(theta1));
set_param([ModelName '/Gain1'], 'Gain', num2str(theta2));
set_param([ModelName '/Gain2'], 'Gain', num2str(theta3));
set_param([ModelName '/Gain3'], 'Gain', num2str(theta4));
set_param([ModelName '/Gain4'], 'Gain', num2str(theta5));
set_param([ModelName '/Gain5'], 'Gain', num2str(theta6));
set_param([ModelName '/Gain6'], 'Gain', num2str(theta7));

% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

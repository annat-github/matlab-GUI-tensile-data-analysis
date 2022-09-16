function varargout = newGUI(varargin)
% NEWGUI MATLAB code for newGUI.fig
%      NEWGUI, by itself, creates a new NEWGUI or raises the existing
%      singleton*.
%
%      H = NEWGUI returns the handle to a new NEWGUI or the handle to
%      the existing singleton*.
%
%      NEWGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWGUI.M with the given input arguments.
%
%      NEWGUI('Property','Value',...) creates a new NEWGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newGUI

% Last Modified by GUIDE v2.5 14-Jan-2015 22:46:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @newGUI_OutputFcn, ...
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






% --- Executes just before newGUI is made visible.
function newGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newGUI (see VARARGIN)
 axes(handles.axes2);
imshow('Immagine2.png')
% Choose default command line output for newGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
initialize_gui(handles);

% UIWAIT makes newGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_Filename_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Filename as text
%        str2double(get(hObject,'String')) returns contents of edit_Filename as a double


% --- Executes during object creation, after setting all properties.
function edit_Filename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_speed_Callback(hObject, eventdata, handles)
% hObject    handle to edit_speed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_speed as text
%        str2double(get(hObject,'String')) returns contents of edit_speed as a double


% --- Executes during object creation, after setting all properties.
function edit_speed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_speed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_loadcell_Callback(hObject, eventdata, handles)
% hObject    handle to edit_loadcell (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_loadcell as text
%        str2double(get(hObject,'String')) returns contents of edit_loadcell as a double


% --- Executes during object creation, after setting all properties.
function edit_loadcell_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_loadcell (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_temperature_Callback(hObject, eventdata, handles)
% hObject    handle to edit_temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_temperature as text
%        str2double(get(hObject,'String')) returns contents of edit_temperature as a double


% --- Executes during object creation, after setting all properties.
function edit_temperature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_P1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_P1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_P1 as text
%        str2double(get(hObject,'String')) returns contents of edit_P1 as a double


% --- Executes during object creation, after setting all properties.
function edit_P1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_P1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_P2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_P2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_P2 as text
%        str2double(get(hObject,'String')) returns contents of edit_P2 as a double


% --- Executes during object creation, after setting all properties.
function edit_P2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_P2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_Calculate.
function pushbutton_Calculate_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Calculate(handles);


% --- Executes on button press in pushbutton_Reset.
function pushbutton_Reset_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
initialize_gui(handles);



% --------------------------------------------------------------------
function open_tag_ClickedCallback(hObject, eventdata, handles)

[FileName PathName] = uigetfile('*.xlsx','Seleziona file');

set(handles.edit_Filename,'String',FileName);

name=fullfile(PathName,FileName);
save('namefile','name');

function save_tag_ClickedCallback(hObject, eventdata, handles)
results=handles.results;
 save('results.mat','results');
 data=handles.Testdata;
 save('testdata.mat','data');
 a=struct2cell(data);
 d= ['Thickness 1',a(1); ' Thickness 2', a(2); 'Thickness 3',a(3);' Thickness average' ,a(4);'Standard deviation',a(5);'File name',a(6);'Test speed',a(7);'Load cell',a(8);
     'Temperature',a(9);'P1',a(10);'P2',a(11);'Width',a(12);'Gauge length',a(13)];
b=struct2cell(results);
e= ['Maximum stress',b(1);' Strain at maximum stress' ,b(2);'Young modulus in (0,P1)',b(3);'Force strain-ratio in (0,P1)',b(4);'Young Modulus in P2',b(5);
     'Force-strain ratio in P2',b(6);'Strain at Young modulus maximum',b(7);'Stress at Young modulus maximum',b(8);'Young Modulus Maximum',b(9);
    'Maximum applied Force',b(10);'Average of UTS',b(11);'Standard deviation',b(12);'Strain at the end of the elastic region',b(13);'Stress at the end of the elastic region',b(14)];
c=[d;e];

[file,path] = uiputfile('animinit.xlsx','Save file name');
if file==0
    return
end

file3=joinseq(path,file);

xlswrite(file3,c);











function edit_average_thick_Callback(hObject, eventdata, handles)
% hObject    handle to edit_average_thick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_average_thick as text
%        str2double(get(hObject,'String')) returns contents of edit_average_thick as a double


% --- Executes during object creation, after setting all properties.
function edit_average_thick_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_average_thick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_thick1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_thick1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_thick1 as text
%        str2double(get(hObject,'String')) returns contents of edit_thick1 as a double


% --- Executes during object creation, after setting all properties.
function edit_thick1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_thick1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_thick2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_thick2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_thick2 as text
%        str2double(get(hObject,'String')) returns contents of edit_thick2 as a double


% --- Executes during object creation, after setting all properties.
function edit_thick2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_thick2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_thick3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_thick3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_thick3 as text
%        str2double(get(hObject,'String')) returns contents of edit_thick3 as a double


% --- Executes during object creation, after setting all properties.
function edit_thick3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_thick3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_std_thick_Callback(hObject, eventdata, handles)
% hObject    handle to edit_std_thick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_std_thick as text
%        str2double(get(hObject,'String')) returns contents of edit_std_thick as a double


% --- Executes during object creation, after setting all properties.
function edit_std_thick_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_std_thick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

a= get(hObject ,'Value');

switch a
    case 1
        set(handles.text_gauge_length,'String',16);
        set(handles.text_width,'String',4);
        
    case 2
         set(handles.text_gauge_length,'String',12);
        set(handles.text_width,'String',2);
end
        
% guidata(popupmenu1,handles);
% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function text_width_Callback(hObject, eventdata, handles)
% hObject    handle to text_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_width as text
%        str2double(get(hObject,'String')) returns contents of text_width as a double


% --- Executes during object creation, after setting all properties.
function text_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function text_gauge_length_Callback(hObject, eventdata, handles)
% hObject    handle to text_gauge_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_gauge_length as text
%        str2double(get(hObject,'String')) returns contents of text_gauge_length as a double


% --- Executes during object creation, after setting all properties.
function text_gauge_length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_gauge_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function print_tag_ClickedCallback(hObject, eventdata, handles)

[FileName,PathName] = uiputfile;
saveDataName = fullfile(PathName,FileName);
%  im = getframe(handles.axes1);
im = getframe(gcf);
    %saves the image in variable "im" to a PNG file 
    imwrite(im.cdata, saveDataName, 'PNG')

% hObject    handle to print_tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

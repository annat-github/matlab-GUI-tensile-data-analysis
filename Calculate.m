
function Calculate(handles)
 axes(handles.axes2);
imshow('Immagine2.png')

% save the data inserted in edit_text into the structure called testdata

handles.Testdata.Filename= get(handles.edit_Filename,'String');
handles.Testdata.P1= str2double(get(handles.edit_P1,'String'));
handles.Testdata.P2= str2double(get(handles.edit_P2,'String'));
handles.Testdata.Load_cell=(get(handles.edit_loadcell,'String'));
handles.Testdata.Speed=str2double(get(handles.edit_speed,'String'));
handles.Testdata.Temperature=str2double(get(handles.edit_temperature,'String'));
handles.Menu.popumenu1 = get(handles.popupmenu1,'Value');
handles.Testdata.gauge_length=str2double(get(handles.text_gauge_length,'String'));
handles.Testdata.width=str2double(get(handles.text_width,'String'));
handles.Testdata.std_thick= str2double(get(handles.text_SD,'String'));
handles.Testdata.average_Thickness= str2double(get(handles.text_average,'String'));
handles.Testdata.Thick1=str2double(get(handles.edit_thick1,'String'));
handles.Testdata.Thick2=str2double(get(handles.edit_thick2,'String'));
handles.Testdata.Thick3=str2double(get(handles.edit_thick3,'String'));
handles.results.Maximumstress=get(handles.text_MaximumStress,'String');
handles.results.strain_at_max_stress=get(handles.text_MaximumStrain,'String');
handles.results.Stress_StrainP1=get(handles.text_Stress_StrainP1,'String');
handles.results.Force_StrainP1=get(handles.text_Force_StrainP1,'String');
handles.results.Stress_StrainP2=get(handles.text_Stress_StrainP2,'String');
handles.results.Force_StrainP2=get(handles.text_Force_StrainP2,'String');
handles.results.Strain_D1max=get(handles.text_Strain_D1max,'String');
handles.results.Stress_D1max=get(handles.text_Stress_D1max,'String');
handles.results.Stress_StrainMaximum=get(handles.text_Stress_StrainMaximum,'String');
handles.results.ForceMax=get(handles.text_max_force,'String');
handles.results.average_uts=get(handles.text_average_uts,'String');
handles.results.sd_uts=get(handles.text_sd_uts,'String');
handles.results.strain_d2max=get(handles.text_strain_D2max,'String');
handles.results.stress_d2max=get(handles.text_stressD2max,'String');

[handles]=calculation(handles);


 set(handles.text_MaximumStress,'String',handles.results.Maximumstress);
 set(handles.text_MaximumStrain,'String',handles.results.strain_at_max_stress);
 set(handles.text_Stress_StrainP1,'String',handles.results.Stress_StrainP1);
 set(handles.text_Force_StrainP1,'String',handles.results.Force_StrainP1);
 set(handles.text_Stress_StrainP2,'String',handles.results.Stress_StrainP2);
 set(handles.text_Force_StrainP2,'String',handles.results.Force_StrainP2);
 set(handles.text_Strain_D1max,'String',handles.results.Strain_D1max);
 set(handles.text_Stress_D1max,'String',handles.results.Stress_D1max);
 set(handles.text_Stress_StrainMaximum,'String',handles.results.Stress_StrainMaximum);
 set(handles.text_sd_uts,'String',handles.results.sd_uts);
 set(handles.text_average_uts,'String',handles.results.average_uts);
 set(handles.text_max_force,'String',handles.results.ForceMax);
 set(handles.text_strain_D2max,'String',handles.results.strain_d2max);
 set(handles.text_stressD2max,'String',handles.results.stress_d2max);
 guidata(handles.uipanel2,handles);
 guidata(handles.uipanel3,handles);
 
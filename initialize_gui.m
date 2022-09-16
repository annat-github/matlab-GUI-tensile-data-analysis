function initialize_gui(handles)
 axes(handles.axes2);
imshow('Immagine2.png')


handles.Testdata.Thick1=0;
handles.Testdata.Thick2=0;
handles.Testdata.Thick3=0;
handles.Testdata.average_Thickness=0;
handles.Testdata.std_thick=0;

handles.Testdata.Filename=0;
handles.Testdata.Speed=20;
handles.Testdata.Load_cell='5k';
handles.Testdata.Temperature=25;
handles.Testdata.P1=2;
handles.Testdata.P2=2;
handles.Testdata.width=0;
handles.Testdata.gauge_length=0;
handles.Menu.popupmenu1=1;
%creola struttura (vettori) che conterrà i vettori restituiti dalle funzioni risolutrici
handles.results.Maximumstress=[];
handles.results.strain_at_max_stress=[];
% handles.results.Stress_Strainin0=[];
% handles.results.Force_Strainin0=[];
handles.results.Stress_StrainP1=[];
handles.results.Force_StrainP1=[];
handles.results.Stress_StrainP2=[];
handles.results.Force_StrainP2=[];
handles.results.Strain_D1max=[];
handles.results.Stress_D1max=[];
% handles.results.Stress_StrainD20=[];
% handles.results.Force_StrainD20=[];
handles.results.Stress_StrainMaximum=[];

handles.results.ForceMax=[];
handles.results.average_uts=[];
handles.results.sd_uts=[];
handles.results.strain_d2max=[];
handles.results.stress_d2max=[];
%inizializzo i risultati
handles.results.strain_at_max_stress=0;
handles.results.Maximumstress=0;
% handles.results.Stress_Strainin0=0;
% handles.results.Force_Strainin0=0;
handles.results.Stress_StrainP1=0;
handles.results.Force_StrainP1=0;
handles.results.Stress_StrainP2=0;
handles.results.Force_StrainP2=0;
handles.results.Strain_D1max=0;
handles.results.Stress_D1max=0;
% handles.results.Stress_StrainD20=0;
% handles.results.Force_StrainD20=0;
handles.results.Stress_StrainMaximum=0;

handles.results.ForceMax=0;
handles.results.average_uts=0;
handles.results.sd_uts=0;
handles.results.strain_d2max=0;
handles.results.stress_d2max=0;
%salvo le strutture appena create (dati e vettori)%nellastruttura principale 
% handles



 guidata(handles.uipanel1,handles);
 guidata(handles.uipanel2,handles);
 guidata(handles.uipanel3,handles); 
%  [handles]=openfunction(handles);
% FileName= openfunction(handles);
% FileName=handles.Testdata.Filename;
%passo i dati alle edit_text
set(handles.edit_Filename,'String',handles.Testdata.Filename);
set(handles.edit_thick1,'String',handles.Testdata.Thick1);
set(handles.edit_thick2,'String',handles.Testdata.Thick2);
set(handles.edit_thick3,'String',handles.Testdata.Thick3);
set(handles.text_average,'String',handles.Testdata.average_Thickness);
set(handles.text_SD,'String',handles.Testdata.std_thick);
set(handles.edit_speed,'String',handles.Testdata.Speed);
set(handles.edit_loadcell,'String',handles.Testdata.Load_cell);
set(handles.edit_temperature,'String',handles.Testdata.Temperature);
set(handles.edit_P1,'String',handles.Testdata.P1);
set(handles.edit_P2,'String',handles.Testdata.P2);
set(handles.text_gauge_length,'String',handles.Testdata.gauge_length);
set(handles.text_width,'String',handles.Testdata.width);

% set(handles.Testdata.popupmenu1,'Value',1);

%passo i dati alle static text

set(handles.text_MaximumStress,'String',handles.results.Maximumstress);
 set(handles.text_MaximumStrain,'String',handles.results.strain_at_max_stress);
%   set(handles.text_stressstrain0,'String',handles.results.Stress_Strainin0);
%   set(handles.text_Force_Strainin0,'String',handles.results.Force_Strainin0);
  set(handles.text_Stress_StrainP1,'String',handles.results.Stress_StrainP1);
  set(handles.text_Force_StrainP1,'String',handles.results.Force_StrainP1);
  set(handles.text_Stress_StrainP2,'String',handles.results.Stress_StrainP2);
   set(handles.text_Force_StrainP2,'String',handles.results.Force_StrainP2);
    set(handles.text_Strain_D1max,'String',handles.results.Strain_D1max);
    set(handles.text_Stress_D1max,'String',handles.results.Stress_D1max);
%     set(handles.text_Stress_StrainD20,'String',handles.results.Stress_StrainD20);
%      set(handles.text_Force_StrainD20,'String',handles.results.Force_StrainD20);
         set(handles.text_Stress_StrainMaximum,'String',handles.results.Stress_StrainMaximum);
         set(handles.text_average_uts,'String',handles.results.average_uts);
         set(handles.text_sd_uts,'String',handles.results.sd_uts);
         set(handles.text_max_force,'String',handles.results.ForceMax);
set(handles.text_strain_D2max,'String',handles.results.strain_d2max);
set(handles.text_stressD2max,'String',handles.results.stress_d2max);
%  set(handles.axes1,'Visible','off');  
 
end
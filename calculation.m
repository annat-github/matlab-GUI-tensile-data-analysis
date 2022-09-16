function[handles]=calculation(handles)

%DATA TO SET
% A=0.25;
% Test data
% speed=;
% thickness=;
% temperature=;
% load cell=;
 
loadcell=handles.Testdata.Load_cell;
speed=handles.Testdata.Speed;
temperature=handles.Testdata.Temperature;

P1=handles.Testdata.P1;
P2=handles.Testdata.P2;
T1=handles.Testdata.Thick1;
T2=handles.Testdata.Thick2;
T3=handles.Testdata.Thick3;
gauge_length=handles.Testdata.gauge_length;
width=handles.Testdata.width;

Tmean=(T1+T2+T3)/3;
handles.Testdata.average_Thickness=Tmean;

set(handles.text_average,'String',Tmean);
A=width*Tmean;%cross section
X=[T1 T2 T3];
SD=std(X,1);
set(handles.text_SD,'String',SD);
guidata(handles.uipanel3,handles);

load('namefile.mat');

N=xlsread(name);
stress1=N(:,3);
stress2=stress1(10:length(stress1));
strain1=N(:,5);
strain2=strain1(10:length(strain1));


%  Bad Point exclusion 
stressmax2=max(stress2);
[ c index6]= min(abs(stress2-stressmax2));%index of maximum stress
stress3=stress2(index6:length(stress2));%vector from maximum stress to length of vector

delta=(10*stressmax2)/100;% 10% of variation compared with the maximum stress
d=stressmax2-delta;
[ c index7]= min(abs(stress3-d));% index that corresponds to maximum stress-d in the final part of the vector
index8=(index7+index6)-1;%index of the vector that correspond to d value considering the whole vector
stress=stress2(1:index8);
strain=strain2(1:index8);

force1=stress*A;

 %fit with a polynomial function of fourth degree:finds the coefficients of a
 %polynomial that fits a set of data in a least-squares sense

   fitdata=fit(strain,stress,'poly4') ;
c= coeffvalues(fitdata); %calculates the polynomial coefficients
 p1=c(1);
 p2=c(2);
 p3=c(3);
 p4=c(4);
 p5=c(5);


 % position of first axes

 strainmax=max(strain);
 stressmax_2=max(stress);
  stressmax= round(stressmax_2*1000) / 1000.0;
 strain_atMax_stress_2 = strain(stress==stressmax_2);
strain_atMax_stress = round(strain_atMax_stress_2*1000) / 1000.0;
 forceMax2=max(force1);
 forceMax = round(forceMax2*1000) / 1000.0;

 A1=width*T1;
 A2=width*T2;
 A3=width*T3;
 StressUTS_T1=forceMax/A1;
 StressUTS_T2=forceMax/A2;
 StressUTS_T3=forceMax/A3;
 mean_uts2=( StressUTS_T1+StressUTS_T2+StressUTS_T3)/3;
 mean_uts=round(mean_uts2*1000)/1000.0;
 B=[ StressUTS_T1  StressUTS_T2 StressUTS_T3];
 SD_stress2=std(B,1);
 SD_stress=round(SD_stress2*1000)/1000.0;

%Polynomial function used for the fitting
syms x

 f = p1*x.^4 + p2*x.^3 + p3*x.^2 + p4*x + p5 ; %fitting function

%derivates of fitting
[d1,d2]= differentiate(fitdata,strain);% calculates the first and second derivatives
  
%third derivative
d3=diff(f,x,3);


%calculation of stiffness in (0,0)
stiffness0=d1(1);
ForceStrain0=stiffness0*A;


%MAXIMUM RIGIDITY MODULUS
%calculation of first derivative maximum
maxd1_2=max(d1);
maxd1= round(maxd1_2*1000) / 1000.0;
%calculation of stiffness in a range centered(around)in the maximum of the first derivative 
strainAtTheD1max2=strain(d1==maxd1_2);
strainAtTheD1max = round(strainAtTheD1max2*1000) / 1000.0;
stressAtTheD1max2=stress(strain==strainAtTheD1max2);
stressAtTheD1max=round(stressAtTheD1max2*1000)/1000.0;

[ c index1]= min(abs(d1-maxd1));%index in strain vector of the maximum of the first derivative
 

%P2%%%%%%%%%%%%

y1=((maxd1_2*P2)/100);%you choose a percent variation based on the maximum of the first derivative
value2= maxd1_2-y1;
 c1=d1(1:index1);
 [ c index2]= min(abs(c1-value2));
c2=d1(index1:length(d1));
[ c index3]= min(abs(c2-value2));
index3real=(index3+index1)-1;

 a=d1(index2:index3real);
 b=sum(a);
 d=(index3real-index2)+1;
 EmaxD1rangepercent2=b/d;
 EmaxD1rangepercent= round(EmaxD1rangepercent2*1000) / 1000.0;
ForceStrainD1maxRange2=EmaxD1rangepercent2*A;
ForceStrainD1maxRange= round(ForceStrainD1maxRange2*1000) / 1000.0;

strainAtP2_1_2=strain(d1==d1(index2));
strainAtP2_1= round(strainAtP2_1_2*1000) / 1000.0;
strainAtP2_2_2=strain(d1==d1(index3real));
strainAtP2_2= round(strainAtP2_2_2*1000) / 1000.0;


%P1%%%%%%%%%%%%%%%%%%%
%calculation of stiffness near (0,0) with a percent range

rifvalue1=min(c1);
y=((rifvalue1*P1)/100);
value1=y+rifvalue1;
[ c index]= min(abs(d1-value1));

strainAtP1=strain(d1==d1(index));
E0rangepercent2=(sum(d1(1:index))/index);
E0rangepercent= round(E0rangepercent2*1000) / 1000.0;
ForceStrain0range2=E0rangepercent2*A;
ForceStrain0range= round(ForceStrain0range2*1000) / 1000.0;



%calculation of maximum stiffness (when the second derivative is =0)

der1=diff(f,x);
der2=diff(der1,x);
inflec_pt = solve(der2);
 zero=double(inflec_pt);
 inflectionPoint = inflec_pt(1);
strainForD2equalto0 =zero(1);% strain position when  d2 is 0
[c index4]= min(abs(strain-zero(1)));
 closestvalue1=strain(index4);
stressForD2equalto0 = stress(strain==closestvalue1);% stress position when d2 is 0

StiffnessforD2equalto0=d1(strain==closestvalue1);
ForceStrainD2equalto0=StiffnessforD2equalto0*A;

% Value  of the second derivative Maximum and  position
[lambda]=max(d2);%calculates the maximum value of the second derivative that is the end of the elastic region
strainAtTheD2max2=strain(d2==lambda);
stressAtTheD2max2=stress(strain==strainAtTheD2max2);
strainAtTheD2max= round(strainAtTheD2max2*1000) / 1000.0;
stressAtTheD2max=round(stressAtTheD2max2*1000) / 1000.0;

%Plot 1
 axes(handles.axes1);
plot(fitdata,strain,stress);
grid on
xlabel('Strain [%]')
 ylabel('Stress [MPa]') 
hold on
plot(strain,force1,'k');
hold on
plot(strainAtTheD1max,stressAtTheD1max,'ro','LineWidth',2);
hold on
plot(strainAtTheD2max,stressAtTheD2max,'ko','LineWidth',2)
hold off
 l=legend('data','fitting','Force-Strain','Maximum Young modulus','Transition point');
set(l,'Location','NorthWest')


%  Plot 2
  axes(handles.axes4);
plot(strain,d1,'m') %plot of the first derivative
grid on
xlabel('Strain [%]')
ylabel('1st derivative [MPa]')
hold on
plot(strainAtP1,d1(index),'mo','LineWidth',2);
hold on
plot(strainAtP2_1,d1(index2),'go','LineWidth',2);
hold on
plot(strainAtP2_2,d1(index3real),'go','LineWidth',2);
hold on
plot(strainAtTheD1max,maxd1,'ro','LineWidth',2);
hold on
plot(strain(1),d1(1),'mo','LineWidth',2);
hold off

 
handles.results.Maximumstress= sprintf('%.3f',stressmax);
handles.results.strain_at_max_stress=sprintf('%.3f',strain_atMax_stress) ;
handles.results.Stress_StrainP1=sprintf('%.3f',E0rangepercent);
handles.results.Force_StrainP1=sprintf('%.3f',ForceStrain0range);
handles.results.Stress_StrainP2=sprintf('%.3f',EmaxD1rangepercent) ;
handles.results.Force_StrainP2=sprintf('%.3f',ForceStrainD1maxRange) ;
handles.results.Strain_D1max=sprintf('%.3f',strainAtTheD1max) ;
handles.results.Stress_D1max=sprintf('%.3f',stressAtTheD1max) ;
handles.results.stress_d2max=sprintf('%.3f',stressAtTheD2max);
handles.results.ForceMax= sprintf('%.3f',forceMax);
handles.results.average_uts=sprintf('%.3f',mean_uts) ;
handles.results.sd_uts=sprintf('%.3f', SD_stress);
handles.results.strain_d2max=sprintf('%.3f',strainAtTheD2max);
handles.results.Stress_StrainMaximum=sprintf('%.3f',maxd1) ;



function fB_record = BlochFitting_singlefB(Freq,Z,tp)
addpath('toolbox');
% Freq = linspace(0.5,4.9,50);
% tp=3;		 % [s]
dwB_record = 1.8; % ppm  relative to dwA
T1A_record =2.51  ;% 1.0~1.4
T2A_record = 1500*1e-3;% 30 +- 5  e-3
Zi_record = 1;
kBA = 200;
% x0 = [fb,B0,B1];
x0=[(50)/(50*1e3),0,0.6];  % initial guess for exchnage rate 
lb=[0,0,0.6];     %.1dB is about .7Hz, T1 ranges 1.71 to 1.68 
ub=[(120)/(50*1e3),0,0.6];
options=optimset('MaxFunEvals',1000000,'TolFun',1e-10,'TolX',1e-10, 'Display',  'off' );
[x,resnorm]=lsqcurvefit(@BlochFittingFunction,x0,Freq,Z,lb, ub, options,tp,dwB_record,kBA,Zi_record,T1A_record,T2A_record);
fB_record = x(1)*50*1e3;
end
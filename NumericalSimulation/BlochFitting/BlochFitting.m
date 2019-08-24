function [fB_record,kba_record,B0_record] = BlochFitting(Freq,Z,tp)
addpath('toolbox');
% Freq = linspace(0.5,4.9,50);
% tp=10;		 % [s]
dwB= [1.94,2.65]; % ppm  relative to dwA
T1A_record =2.6 ;% 1.0~1.4
T2A_record = 1.8;% 30 +- 5  e-3
Zi_record = 1;
B1_record = 0.6;
% kBA = 200;
% x0 = [fb,     kba,        B0];
x0=[(5),   140,    0];  % initial guess for exchnage rate 
lb=[(5),   100,     -0.5];     %
ub=[(105), 400,    0.5];
options=optimset('MaxFunEvals',1000000,'TolFun',1e-10,'TolX',1e-10, 'Display',  'off' );
[x,resnorm]=lsqcurvefit(@BlochFittingFunction,x0,Freq,Z,lb, ub, options,tp,dwB,B1_record,Zi_record,T1A_record,T2A_record);
fB_record = x(1);
kba_record = x(2);
B0_record = x(3);
end
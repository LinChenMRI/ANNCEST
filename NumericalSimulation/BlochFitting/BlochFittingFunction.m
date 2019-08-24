function zspec = BlochFittingFunction(x,Freq,tp,dwB,B1_record,Zi_record,T1A_record,T2A_record)
Sim=init_Sim(struct());
Sim.n_cest_pool=2;
Sim.xZspec = Freq + x(3); % +-0.1 ppm
Sim.fB = x(1)*0.87/(2*55.5*1e3);
Sim.kBA = x(2)/2.19;
Sim.B1 = B1_record;
Sim.Zi=Zi_record;
T1A = T1A_record;
T2A = T2A_record;

Sim.fD = x(1)*1.73/(2*55.5*1e3);
Sim.kDA = x(2);

Sim.tp=tp;		 % [s]

Sim.FREQ=42.58*3;

Sim.R1A=1/T1A; 
Sim.R2A=1/T2A; 
Sim.R1B=20; 
Sim.R2B=50;
Sim.R1D=20; 
Sim.R2D=50;

Sim.dwB=dwB(1); % ppm  relative to dwA
Sim.dwD=dwB(2); % ppm  relative to dwA
Sim.dwA=0;

Sim.n=1;	Sim.DC=1;
Sim.shape='block';		 
Sim.pulsed=0;		
Sim.analytic          = 0;                % calculate analtical solution? 1=yes, 0=no
Sim.numeric           = 0;                % calculate numerical solution? 1=yes, 0=no
Sim.MT                = 0;                % 1 = with MT pool (pool C), 0 = no MT pool
Sim.Rex_sol           = 'Hyper';          % solution for Rex - cases: 'Hyper', 
Sim.MT_lineshape      = 'Lorentzian';       % MT lineshape -SuperLorentzian, Gaussian, Lorentzian
Sim.MT_sol_type       = 'Rex_MT';         % Rex_MT solution type - cases: 'Rex_MT'
Sim.B1cwpe_quad   = -1;                     %XX
Sim.c     = 1;                              %XX
Sim.dummies=0; 
Sim.flipangle=90; 
Sim.readout='FID'; 
Sim.spoilf=0; 
%%
num = NUMERIC_SIM(Sim);
zspec = num.zspec;

end
%% (O) Threshold Variability
a=0.03; b=0.25; c=-60;  d=4;
u0=-64; 
dt=0.2; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=current(0,dt,-6);
I(10:20)=1;
I(80:100)=1;
I(60:140)=-6;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(O) Threshold Variability - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'O-Threshold Variability_Membrane Potential.png')

figure;	
plot(u,w);
title('(O) Threshold Variability - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery Variable (w)');
% saveas(gcf,'O-Threshold Variability_PhasePortrait.png')
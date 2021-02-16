%% (S) Inhibition Induced Spiking
a=-0.02;  b=-1; c=-60;  d=8;
u0=-63.8; 
dt=0.2; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=(-80)*ones(1,N);
I(50:850)=40;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(S) Inhibition Induced Spiking - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'S-Inhibition Induced Spiking_Membrane Potential.png')

figure;	
plot(u,w);
title('(S) Inhibition Induced Spiking - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery Variable (w)');
% saveas(gcf,'S-Inhibition Induced Spiking_PhasePortrait.png')
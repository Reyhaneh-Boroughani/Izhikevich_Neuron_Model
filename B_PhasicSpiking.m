%% (B) Phasic Spiking
a=0.02; 
b=0.25;  
c=-65;  
d=6; 
u0=-64; 
dt=0.25; 
I=current(1,dt,0.5); %%constant current with amp=0.5

[u,w]=izhikevich(a,b,c,d,I,dt,u0);
N=ceil(100/dt);
t=linspace(1,100,N);

figure;
plot(t,u);
title('(B) Phasic Spiking - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'B-Phasic Spiking_Membrane Potential.png')

figure;	
plot(u,w);
title('(B) Phasic Spiking - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'B-Phasic Spiking_PhasePortrait.png')
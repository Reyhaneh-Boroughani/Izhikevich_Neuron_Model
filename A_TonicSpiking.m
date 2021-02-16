%% (A) Tonic Spiking
a=0.02; 
b=0.2;  
c=-65;  
d=6; 
u0=-70; 
dt=0.25; 
I=current(1,dt,14); %%constant current with amp=14 

[u,w]=izhikevich(a,b,c,d,I,dt,u0);
N=ceil(100/dt);
t=linspace(1,100,N);

figure;
plot(t,u);
title('(A) Tonic Spiking - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'A-Tonic Spiking_Membrane Potential.png')

figure;	
plot(u,w);
title('(A) Tonic Spiking - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'A-Tonic Spiking_PhasePortrait.png')
%% (F) Spike Frequency Adaptation 
a=0.01; 
b=0.2;  
c=-65;  
d=8;
u0=-70; 
dt=0.25; 
I=current(1,dt,30); %%constant current with amp=10

[u,w]=izhikevich(a,b,c,d,I,dt,u0);
N=ceil(100/dt);
t=linspace(1,100,N);

figure;
plot(t,u);
title('(F) Spike Frequency Adaptation  - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'F-Spike Frequency Adaptation_Membrane Potential.png')

figure;	
plot(u,w);
title('(F) Spike Frequency Adaptation  - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'F-Spike Frequency Adaptation_PhasePortrait.png')
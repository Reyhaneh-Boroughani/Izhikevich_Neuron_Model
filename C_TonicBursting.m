%% (C) Tonic Bursting
a=0.02; 
b=0.2;  
c=-50;  
d=2; 
u0=-70; 
dt=0.25; 
I=current(1,dt,15); %%constant current with amp=15

[u,w]=izhikevich(a,b,c,d,I,dt,u0);
N=ceil(100/dt);
t=linspace(1,100,N);

figure;
plot(t,u);
title('(C) Tonic Bursting - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'C-Tonic Bursting_Membrane Potential.png')

figure;	
plot(u,w);
title('(C) Tonic Bursting - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'C-Tonic Bursting_PhasePortrait.png')
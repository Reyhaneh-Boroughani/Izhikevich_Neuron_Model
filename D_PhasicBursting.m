%% (D) Phasic Bursting
a=0.02; 
b=0.25;  
c=-55;  
d=0.05;
u0=-64; 
dt=0.25; 
I=current(1,dt,0.6); %%constant current with amp=0.6 

[u,w]=izhikevich(a,b,c,d,I,dt,u0);
N=ceil(100/dt);
t=linspace(1,100,N);

figure;
plot(t,u);
title('(D) Phasic Bursting - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'D-Phasic Bursting_Membrane Potential.png')

figure;	
plot(u,w);
title('(D) Phasic Bursting - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'D-Phasic Bursting_PhasePortrait.png')
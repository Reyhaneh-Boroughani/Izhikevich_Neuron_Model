%% (E) Mixed Mode
a=0.02; 
b=0.2;  
c=-55;  
d=4;
u0=-70; 
dt=0.25; 
I=current(1,dt,10); %%constant current with amp=10

[u,w]=izhikevich(a,b,c,d,I,dt,u0);
N=ceil(100/dt);
t=linspace(1,100,N);

figure;
plot(t,u);
title('(E) Mixed Mode - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'E-Mixed Mode_Membrane Potential.png')

figure;	
plot(u,w);
title('(E) Mixed Mode - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'E-Mixed Mode_PhasePortrait.png')
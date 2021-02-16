%% (G) Class 1
a=0.02; 
b=-0.1; 
c=-55; 
d=6; 
u0=-60; 
dt=0.5; 
I=current(2,dt,30); %%ramp

[u,w]=izhikevich(a,b,c,d,I,dt,u0);
N=ceil(100/dt);
t=linspace(1,100,N);

figure;
plot(t,u);
title('(G) Class1 - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'G-Class1_Membrane Potential.png')

figure;	
plot(u,w);
title('(G) Class1 - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'G-Class1_PhasePortrait.png')
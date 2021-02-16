%% (L) Integrator
a=0.02; b=-0.1; c=-55; d=6;
u0=-60; 
dt=0.1; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=zeros(1,N);
I(50:85)=30;
I(100:135)=30;
I(500:550)=30;
I(900:950)=30;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(L) Integrator - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'L-Integrator_Membrane Potential.png')

figure;	
plot(u,w);
title('(L) Integrator - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'L-Integrator_PhasePortrait.png')
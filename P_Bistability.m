%% (P) Bistability
a=0.1;  b=0.26; c=-60;  d=0;
u0=-61; 
dt=0.2; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=zeros(1,N);
I(30:150)=1.24;
I(216:300)=1.24;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(P) Bistability - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'P-Bistability_Membrane Potential.png')

figure;	
plot(u,w);
title('(P) Bistability - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery Variable (w)');
% saveas(gcf,'P-Bistability_PhasePortrait.png')
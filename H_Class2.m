%% (H) Class 2
a=0.2;  
b=0.26; 
c=-65;  
d=0;
u0=-64; 
dt=0.7; 
I=current(2,dt,30); %%ramp

[u,w]=izhikevich(a,b,c,d,I,dt,u0);
N=ceil(100/dt);
t=linspace(1,100,N);

figure;
plot(t,u);
title('(H) Class2 - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'H-Class2_Membrane Potential.png')

figure;	
plot(u,w);
title('(H) Class2 - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'H-Class2_PhasePortrait.png')
%% (R) Accomodation
a=0.02;  b=1; c=-55;  d=4;
u0=-65; 
dt=0.1; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=(-80)*ones(1,N);
for i=50:500
	I(i+1)=I(i)+0.01;
end

for i=800:850
	I(i+1)=I(i)+1;
end

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(R) Accomodation - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'R-Accomodation_Membrane Potential.png')

figure;	
plot(u,w);
title('(R) Accomodation - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery Variable (w)');
% saveas(gcf,'R-Accomodation_PhasePortrait.png')
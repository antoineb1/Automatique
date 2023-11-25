%Constantes
M=180000;
Te = 0.07;
r4 = 1;
r3 = 2-2*exp(-5*Te);
r2 = 2*r3-1+exp(-10*Te);
r1 = 2*r2-r3;
r0 = 2*r1-r2;

s1 = M/Te * (2*r0-r1);
s0 = -M/Te * r0;

numRt = [r4, r3, r2, r1, r0];
numR = conv([1 -1], numRt);
numS = conv([1 0 0 0 0], [s1 s0]);
numT = conv([1 0 0 0 0 0], [s0+s1]); % Plus rapide car 5 retard en moins dans la boucle fermée


% Vitesse du metro :
simu=sim('Correcteur_rst.slx');
plot(simu.v);
hold on
plot(simu.vr);
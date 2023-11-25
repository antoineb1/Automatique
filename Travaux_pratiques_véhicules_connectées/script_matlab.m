%de 0 à 100km/h en 12s:
amax=2.3;
tmax=12;
tau=0.1;

%Matrice d'état
A=[0,1,0;
    0,0,1;
    0,0,-1/tau];
B=[0;0;1/tau];


% Constantes
h=0.6;
r=2.5;
L=3;

% Nombre voiture
ns=3;

%Vecteur d'état
z1=[0;0;0];
z2=[-r;0;0];
z3=[-2*r;0;0];

%Correcteur
kp=0.2;
kd=0.7;


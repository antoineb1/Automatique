%% Cas metro simple
%Constantes
M=180000;
Ti=2/5;
k=10*M;
Te = 0.07;

%Test pour plusieurs masses

% for M=140000:10000:180000
simu=sim('simulink_metro');


plot(simu.vr);
hold on
plot(simu.v);


% end


% % Corrections de l'oscillations wind up
% simu=sim('simulink_metro');
% plot(simu.v);
% hold on
% plot(simu.vr);



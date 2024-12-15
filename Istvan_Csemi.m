mu = 0.05; % várható hozam
sigma = 0.2; % volatilitás
S0 = 100; % kezdeti részvényár
T = 1; % időtáv (év)
dt = 1/252; % időlépés (napi)
N = T/dt; % lépések száma
M = 1000; % szimulációs pályák száma

S = zeros(M, N+1);
S(:,1) = S0;

for i = 1:M
    for t = 1:N
        S(i,t+1) = S(i,t) * exp((mu - 0.5 * sigma^2) * dt + sigma * sqrt(dt) * randn);
    end
end

plot(0:dt:T, S');
xlabel('Idő (év)');
ylabel('Részvényár (€)');
title('Monte Carlo szimuláció a részvényárakhoz');

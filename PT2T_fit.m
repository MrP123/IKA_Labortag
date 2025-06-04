function [value, G] = PT2T_fit(param, t)

Ku = 1;  %step size in volts

K = param(1);
tau1 = param(2);
tau2 = param(3);
Tt = param(4);

G = K * tf(1, [tau1, 1]) * tf(1, [tau2, 1]);
G.IODelay = Tt;

value = step(Ku*G, t);

end
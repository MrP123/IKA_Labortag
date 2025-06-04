function [value, G] = PT1T_fit(param, t)

Ku = 1;  %step size

K = param(1);
tau = param(2);
Tt = param(3);

G = tf([K], [tau, 1]);
G.IODelay = Tt;

value = step(Ku*G, t);

end
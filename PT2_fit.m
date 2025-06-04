function [value, G] = PT2_fit(param, t)

Ku = 1;  %step size in volts

K = param(1);
zeta = param(2);
wn = param(3);

G = tf([K*wn^2], [1, 2*zeta*wn, wn^2]);

value = step(Ku*G, t);

end
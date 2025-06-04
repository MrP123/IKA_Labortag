function [value, G] = PT1_fit(param, t)

Ku = 1;  %step size

K = param(1);
tau = param(2);

G = tf([K], [tau, 1]);

value = step(Ku*G, t);

end
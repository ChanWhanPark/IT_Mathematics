P = [3, 1;2, 0;0, 0;0, 2;2, 2];
C = [1 1 0 0 1;1 1 1 0 1;0 1 1 1 0;0 0 1 1 1;1 1 0 1 1];
gplot(C, P, '-r'); hold on;

T11 = [cos(pi/4)^2, sin(pi/4)*cos(pi/4); sin(pi/4)*cos(pi/4), sin(pi/4)^2];
T12 = [cos(pi/2)^2, sin(pi/2)*cos(pi/2); sin(pi/2)*cos(pi/2), sin(pi/2)^2];

P11 = (T11*P')';
P12 = (T12*P')';
gplot(C, P11, '-g'); hold on;
gplot(C, P12, '-b'); hold on;

axis([-3, 3, -3, 3]);

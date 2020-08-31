P = [3, 1;2, 0;0, 0;0, 2;2, 2];
C = [1 1 0 0 1;1 1 1 0 1;0 1 1 1 0;0 0 1 1 1;1 1 0 1 1];
gplot(C, P, '-r'); hold on;

T6 = [cos(pi/4), -sin(pi/4); sin(pi/4), cos(pi/4)];
T7 = [cos(pi/2), -sin(pi/2); sin(pi/2), cos(pi/2)];
T8 = [cos(pi), -sin(pi); sin(pi), cos(pi)];

P6 = (T6*P')';
P7 = (T7*P')';
P8 = (T8*P')';

gplot(C, P6, '-b'); hold on;
gplot(C, P7, '-g'); hold on;
gplot(C, P8, '-p'); hold on;
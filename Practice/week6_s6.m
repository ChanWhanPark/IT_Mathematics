P = [3, 1;2, 0;0, 0;0, 2;2, 2];
C = [1 1 0 0 1;1 1 1 0 1;0 1 1 1 0;0 0 1 1 1;1 1 0 1 1];
gplot(C, P, '-r'); hold on;

T13 = [cos(pi/4), -sin(pi/4); sin(pi/4), cos(pi/4)];
T14 = [cos(pi/2), -sin(pi/2); sin(pi/2), cos(pi/2)];
P13 = (T13*P')';
P14 = (T14*P13')';

gplot(C, P13, '-b'); hold on;
gplot(C, P14, '-g'); hold on;

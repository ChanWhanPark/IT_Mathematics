P = [3, 1;2, 0;0, 0;0, 2;2, 2];
C = [1 1 0 0 1;1 1 1 0 1;0 1 1 1 0;0 0 1 1 1;1 1 0 1 1];
gplot(C, P, '-r'); hold on;

T15 = [cos(pi/4), -sin(pi/4); sin(pi/4), cos(pi/4)];
T16 = [cos(pi/2), -sin(pi/2); sin(pi/2), cos(pi/2)];

P15 = (T15*P')';
P16 = (T16*P15')';

gplot(C, P15, '-g'); hold on;
gplot(C, P16, '-b'); hold on;
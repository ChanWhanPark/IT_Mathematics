R = [1, 0;0, -1];
P = [1 1; 0 2; -1 1; -1 -1; 1 -1];
Q = [1 1 1 0 1; 1 1 1 0 0; 1 1 1 1 0; 0 0 1 1 1; 1 0 0 1 1];
LT = (R*P')';

gplot(Q, P, '-o')
hold on;
gplot(Q, LT, '-r')
hold on;
grid on;
axis([-2, 2, -3, 3]);
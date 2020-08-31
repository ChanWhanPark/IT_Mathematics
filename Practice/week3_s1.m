clear;
clc;

t = linspace(0, 6, 10);

y=zeros(1, length(t));

id1 = find(t<=1);
y(id1) = t(id1);

id2 = find(t>1);
y(id2) = 1./t(id2);

figure(1)
loglog(t, y);
grid on;
xlabel('t');
ylabel('y');
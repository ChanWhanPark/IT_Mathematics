clear;

r = 10;
x1 = 5;
y1 = 10;

z = linspace(-pi, pi, 1000);
x = r*cos(z) + x1
y = r*sin(z) + y1

plot(x, y)
grid;
t = 0:0.1:5;
y1 = exp(-t);
y2 = cos(pi*t);
y3 = y1 .* y2;

plot(t, y3)
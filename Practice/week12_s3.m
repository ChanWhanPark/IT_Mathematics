%%Newton's Method
x = 0;
f = x^4 - 14*x^3 + 60*x^2 - 70*x;
g = 4*x^3 -42*x^2 + 120*x - 70;
gdx = 12*x^2 - 84*x + 120;
i = 0;
fprintf('iter      x            fdx            fdxdx       f\n')
fprintf('--------------------------------------------------------\n')
fprintf('%3i %12.6f %12.6f %12.6f %12.6f\n', i, x, g, gdx, f)
while(g ~= 0)
   i = i + 1;
   f = x^4 - 14*x^3 + 60*x^2 - 70*x;
   g = 4*x^3 -42*x^2 + 120*x - 70;
   gdx = 12*x^2 - 84*x + 120;
   x = x - g / gdx;
   fprintf('%3i %12.6f %12.6f %12.6f %12.6f\n', i, x, g, gdx, f)
end
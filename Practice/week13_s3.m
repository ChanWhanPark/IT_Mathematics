%%Conjugate Gradient Method
%% 등고선 그래프
figure(1);
[x1_plot, x2_plot] = meshgrid([-0.5:0.1:3], [-0.5:0.1:2.5]);
fx_plot = (x1_plot - 2).^2 + 2*(x2_plot - 2).^2;
contour(x1_plot, x2_plot, fx_plot);
xlabel('x1'); ylabel('x2'); hold on; colorbar;

%% 초기설정
i = 0; e = 10^-6; x = [0, 0];
fx = (x(1) - 2).^2 + 2.*(x(2) - 2).^2;
Gf = -[2*(x(1) - 2) ; 4*(x(2) - 2)];
norm_Gf = norm(Gf);

figure(1);
plot(x(1), x(2), 'r*');
hold on; grid on;

fprintf("  i     x1        x2        |Gf|        f(x)\n")
fprintf("-------------------------------------------------\n")
fprintf("%3d %10.6f %10.6f %10.6f %10.6f\n", i, x(1), x(2), norm_Gf, fx)
    
%% 알고리즘 구현
while(norm_Gf > e)
    i = i + 1;
    ds = 0.0001;
    s_range = [0:ds:100];
    x_next = [x(1) + (Gf(1).*s_range) ; x(2) + (Gf(2).*s_range)];
    fx_next = (x_next(1, :) - 2).^2 + 2*(x_next(2, :) - 2).^2;
    
    idx = find(fx_next == min(fx_next)); %index
    x_prev = x;
    x = [x_next(1, idx) ; x_next(2, idx)];
    fx = fx_next(idx);
    
  
    gf = [2*(x(1) - 2) ; 4*(x(2) - 2)];
    gff = [2*(x_prev(1) - 2) ; 4*(x_prev(2) - 2)];
    b = (transpose(gf)*gf)./(transpose(gff)*gff);
    Gf= [-gf(1)+b*Gf(1) ; -gf(2)+b*Gf(2)];
   
    
    norm_Gf = norm(Gf);
    
    figure(1);
    plot(x(1), x(2), 'r*');
    plot([x_prev(1), x(1)], [x_prev(2), x(2)], '-r'); hold on;
    fprintf("%3d %10.6f %10.6f %10.6f %10.6f\n", i, x(1), x(2), norm_Gf, fx);
end
A = randn(5, 3);
B = randn(5, 1);
cvx_begin
    variable x(3);
    minimize(norm(A*x - B, 1));
    subject to
        -0.5 <= x
        x <= 0.3 
cvx_end
        
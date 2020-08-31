%%Bisection Method

e = 10^-5;
ak = 0; bk = 2; ck = 1/2 * (ak + bk); dx = bk - ak;
f = bk^4 - 14*bk^3 + 60*bk^2 - 70*bk;
i = 0;

fprintf('iter      ak            bk            ck       dx          f(ck)\n')
fprintf('---- ------------- ------------- ---------- ----------  ------------\n')
fprintf('%3i %12.6f %12.6f %12.6f %12.6f %12.6f\n', i, ak, bk, ck, dx, f)

while (dx > e)
    i = i + 1;
    ck = 1/2 * (ak + bk);
    fck = ck^4 - 14*ck^3 + 60*ck^2 - 70*ck; % ck 목적 함수
    fckdx = 4*ck^3 - 42*ck^2 + 120*ck - 70;
    if(fckdx == 0)
        return;
    elseif (fckdx > 0)
        bk = ck;
    elseif (fckdx < 0)
        ak = ck;
    end
    f = ck^4 - 14*ck^3 + 60*ck^2 - 70*ck;
    dx = bk - ak;
    fprintf('%3i %12.6f %12.6f %12.6f %12.6f %12.6f\n', i, ak, bk, ck, dx, f);
end
   
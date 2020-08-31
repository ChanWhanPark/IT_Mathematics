%%Golden Section Method

e = 10^-5;
tau = (3 - sqrt(5)) / 2;
ak = 0; bk = 2; dx = bk - ak;
f = bk^4 - 14*bk^3 + 60*bk^2 - 70*bk;
i = 0;

fprintf('iter      ak            bk            dx          f(bk)\n')
fprintf('---- ------------- ------------- ----------  ------------\n')
fprintf('%3i %12.6f %12.6f %12.6f %12.6f\n', i, ak, bk, dx, f)

while (dx > e)
    i = i+1;
    hak = ak + tau * dx;
    hbk = bk - tau * dx;
    fak = ak^4 - 14*ak^3 + 60*ak^2 - 70*ak; % ak ���� �Լ�
    fbk = bk^4 - 14*bk^3 + 60*bk^2 - 70*bk; % bk ���� �Լ�
    fhak = hak^4 - 14*hak^3 + 60*hak^2 - 70*hak; % hak ���� �Լ�
    fhbk = hbk^4 - 14*hbk^3 + 60*hbk^2 - 70*hbk; % hbk ���� �Լ�
    
    if(fhak < fhbk)
        check = 1;
    elseif (fhak > fhbk)
        check = 2;
    elseif (fhak == fhbk)
        check = 3;
    end
    
    switch check
        case 1
            if (fak > fhak)
                bk = hbk;
            else
                bk = hak;
            end
        case 2
            if(fbk > fhbk)
                ak = hak;
            else
                ak = hbk;
            end
        case 3
            ak = hak;
            bk = hbk;
    end
    f = bk^4 - 14*bk^3 + 60*bk^2 - 70*bk;
    dx = bk - ak;
    fprintf('%3i %12.6f %12.6f %12.6f %12.6f\n', i, ak, bk, dx, f)
end
   
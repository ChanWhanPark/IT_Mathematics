%% Poisson Theoretical PMF & CDF
Theo_PMF = [];
Theo_CDF = [];

k=[1:1:10];
n = 20; p = 0.2;

for lp=1:length(k)
    Theo_PMF(lp) = (n*p)^k(lp)/factorial(k(lp))*exp(-n*p);
end
Theo_CDF = cumsum(Theo_PMF);
Theo_AVG = n*p
Theo_VAR = n*p

%% Emperical PMF & CDF
count = [];
sample_num = 100000;
U_rand = rand(sample_num, 1);

idx = (U_rand < Theo_CDF(1)); %
count(1) = sum(idx);

for lp = 1:length(Theo_CDF)-1
    idx = (U_rand >= Theo_CDF(lp)) & (U_rand < Theo_CDF(lp+1));
    count(lp+1) = sum(idx);
end

Empi_PMF = count./sample_num;
Empi_CDF = cumsum(Empi_PMF);
Empi_AVG = sum(k.*Empi_PMF)
Empi_VAR = sum((k-Empi_AVG).^2.*Empi_PMF)

%% Ãâ·Â
subplot(2, 1, 1);
stem(k, Empi_PMF, 'r*'); hold on;
stem(k, Theo_PMF, 'bo');
legend('Empirical PMF', 'Theoretical PMF');
grid on;
title('PMF');
xlabel('k');
ylabel('P[X=k]');

subplot(2, 1, 2);
stem(k, Empi_CDF, 'r*'); hold on;
stem(k, Theo_CDF, 'bo');
legend('Empirical CDF', 'Theoretical CDF');
grid on;
title('CDF');
xlabel('k');
ylabel('P[X=k]');


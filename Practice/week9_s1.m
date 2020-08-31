%% Uniform Theoretical PMF & CDF
X = [1:6];
Theo_PMF = 1/6.*ones(1, length(X));
Theo_CDF = cumsum(Theo_PMF);
Theo_AVG = 1/6*sum(X)
Theo_VAR = 1/6*sum((X-Theo_AVG).^2)

%% Emperical PMF & CDF
count = [];
sample_num = 100000;
U_rand = rand(sample_num, 1);

idx = (U_rand < Theo_CDF(1)); %
count(1) = sum(idx);

for lp = 1:length(Theo_CDF)-1
    idx = (U_rand >= Theo_CDF(lp)) & (U_rand < Theo_CDF(lp+1));
    count(lp+1) = sum(idx);
end;

Empi_PMF = count./sample_num;
Empi_CDF = cumsum(Empi_PMF);
Empi_AVG = sum(X.*Empi_PMF)
Empi_VAR = sum((X-Empi_AVG).^2.*Empi_PMF)

%% Ãâ·Â
subplot(2, 1, 1)
stem(X,Empi_PMF, 'r*'); hold on;
stem(X,Theo_PMF, 'bo');
legend('Empirical PMF', 'Theoretical PMF');
grid on;
title('PMF');
xlabel('X');
ylabel('P[x=X]');

subplot(2, 1, 2)
stem(X,Empi_CDF, 'r*'); hold on;
stem(X,Theo_CDF, 'bo');
legend('Empirical CDF', 'Theoretical CDF', 'Location', 'Northwest');
grid on;
title('PMF');
xlabel('X');
ylabel('P[x=X]');
%% Binomial Theorical PMF
Bino_PMF = [];
x1 = [0:0.1:50];
n = 50; p = 0.1;
Theo_AVG = n*p;
Theo_VAR = n*p*(1-p);

Bino_PMF = ((1/(sqrt(2*pi)*sqrt(Theo_VAR)))*exp(-((x1-Theo_AVG).^2/(2*sqrt(Theo_VAR)*sqrt(Theo_VAR)))));

%% Gausian Theorical PMF
Gaus_PMF = [];
x2=[0:1:50];
n=50;
p=0.1;

for lp= 1:length(x2)
    Gaus_PMF(lp)=nchoosek(n,x2(lp))*p^(x2(lp))*(1-p)^(n-x2(lp));
end;

figure(1)
bar(x2, Gaus_PMF, 'b'); grid on;

xlabel('x');
ylabel('Probability');

hold on;

plot(x1,Bino_PMF,'r');
legend('Binomial PMF','Gaussian PDF');
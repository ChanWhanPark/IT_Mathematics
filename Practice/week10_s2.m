%% Gaussian Theorical AVG & VAR
Theo_AVG = 2
Theo_VAR = 2

%% Gaussian Empirical PDF & CDF
sample_num = 1000000;
X = sqrt(Theo_VAR)*randn(1, sample_num) + Theo_AVG;

bin_num = 100;
[counts, bin_centers] = hist(X,bin_num); % # of samples in each bin
%%%%% [counts,centers] = hist(___) returns # of samples in each bin and bin center on x-axis.
dx = bin_centers(2)-bin_centers(1);

Empi_PDF = counts./sample_num./dx;  % Empirical PMF, Counting samples in dx interval, thus normalize
Empi_CDF = cumsum(Empi_PDF.*dx);  % Empirical CDF
  
Empi_AVG = sum(bin_centers.*Empi_PDF.*dx)
Empi_VAR = sum((bin_centers - Empi_AVG).^2.*Empi_PDF.*dx)

%% Gaussian Theorical PDF & CDF
Theo_PDF = 1 / (sqrt(2 * pi)*sqrt(Theo_VAR))*exp(-(bin_centers-Theo_AVG).^2 / (2 * Theo_VAR));
Theo_CDF = cumsum(Theo_PDF.*dx);

%%
figure(1) 

subplot(2,1,1)
bar(bin_centers, Empi_PDF, 'b'); hold on; 
plot(bin_centers, Theo_PDF,'r-','LineWidth',2);
legend('Empirical PDF','Theoretical PDF','Location','Northwest');
grid on;
xlabel('x');
ylabel('PDF'); 
subplot(2,1,2)
bar(bin_centers , Empi_CDF, 'b' ); hold on;
plot(bin_centers , Theo_CDF, 'r-','LineWidth',2);
legend('Empirical CDF','Theoretical CDF','Location','Northwest');
grid on;
xlabel('x');
ylabel('CDF'); 
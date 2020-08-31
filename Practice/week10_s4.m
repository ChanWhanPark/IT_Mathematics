%% Rayleigh Theorical AVG & VAR
alpha = 6;
Theo_AVG = alpha * sqrt(pi/2)
Theo_VAR = (4 - pi) / 2 * (alpha^2)

%% Rayleigh Empirical PDF & CDF
sample_num = 1000000;
X = alpha * randn(sample_num, 1);
Y = alpha * randn(sample_num, 1);
Z = sqrt(X.^2 + Y.^2);
bin_num = 100;
[counts, bin_centers] = hist(Z,bin_num); % # of samples in each bin
%%%%% [counts,centers] = hist(___) returns # of samples in each bin and bin center on x-axis.
dx = bin_centers(2)-bin_centers(1);

Empi_PDF = counts./sample_num./dx;  % Empirical PMF, Counting samples in dx interval, thus normalize
Empi_CDF = cumsum(Empi_PDF.*dx);  % Empirical CDF
  
Empi_AVG = sum(bin_centers.*Empi_PDF.*dx)
Empi_VAR = sum((bin_centers - Empi_AVG).^2.*Empi_PDF.*dx)

%% Rayleigh Theorical PDF & CDF
Theo_PDF = bin_centers./(alpha^2).*exp(-bin_centers.^2/(2*(alpha^2)));
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Copyright: Prof. Seong Ho Chae
%%% Continous Uniform Random Variable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear all


a = 1;
b = 6;

%% Empirical PDF & CDF
sample_num = 100000;
X = (b-a)*rand(sample_num,1) + a; % Generating Random Number in [a,b]

bin_num = 100;
[counts, bin_centers] = hist(X,bin_num); % # of samples in each bin
%%%%% [counts,centers] = hist(___) returns # of samples in each bin and bin center on x-axis.
dx = bin_centers(2)-bin_centers(1);

Empi_PDF = counts./sample_num./dx;  % Empirical PMF, Counting samples in dx interval, thus normalize
Empi_CDF = cumsum(Empi_PDF.*dx);  % Empirical CDF
  
Empi_AVG = sum(bin_centers.*Empi_PDF.*dx)
Empi_VAR = sum( (bin_centers - Empi_AVG).^2.*Empi_PDF.*dx )

%% Theoretical PDF and CDF

Theo_PDF = 1/(b-a).*ones(1,length(bin_centers) );
Theo_CDF = (bin_centers - a)./(b-a);

Theo_AVG = (a+b)/2
Theo_VAR = (b-a)^2/12


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
plot(bin_centers  , Theo_CDF, 'r-','LineWidth',2);
legend('Empirical CDF','Theoretical CDF','Location','Northwest');
grid on;
xlabel('x');
ylabel('CDF');

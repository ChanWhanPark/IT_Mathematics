clc;
clear all;
close all;

V = [1: 0.5: 5];
sigma = 1;

X_num = 10^7;

for k = 1: length(V)
    X = zeros(1,X_num);
    
    A = rand(1, X_num);
    if (A(k) < 0.5)
        A(k) = 0; 
        X(k) = V(k);
    else
        A(k) = 1;
        X(k) = -V(k);
    end
    
    error_num = 0;
    estimate = zeros(1, X_num);
 
    N = sigma.*randn(1, 10^7);
    
    Y = X + N;        
    
    if (Y < 0)
        estimate(k) = -V(k);
    else
        estimate(k) = V(k);
    end
    
    if (estimate(k) ~= X(k))
        error_num = error_num + 1;
    end
    
    error_prob(k) = error_num/X_num;
    
end



V_theo = [1:0.1:5];
theo_err_prob = 1/2*erfc(V_theo/(sqrt(2)*sigma));


figure(1)
semilogy(V_theo, theo_err_prob,'-b');
hold on;
semilogy(V,error_prob,'ro');
grid on;
title('Erro Probability');
ylabel('P_e');
xlabel('V(voltage)');
legend('Theory', 'Simulation');
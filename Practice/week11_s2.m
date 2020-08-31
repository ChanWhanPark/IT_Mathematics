%% 이진 전송 시스템 초기값 지정
V = [1:0.5:5]; % Voltage
sigma = 1;
X_num=10^7; % 랜덤 데이터

for k = 1:length(V)
    
    X = zeros(1,X_num);
    %% Data Generation
    idx = rand(1, X_num);
    idx1 = find(idx < 0.5); % 생성된 데이터가 0을 간주
    idx2 = find(idx >= 0.5); % 생성된 데이터가 1을 간주
    
    X(idx1) = -V(k); % 생성된 데이터가 0인 경우 -V로 전송
    X(idx2) = V(k); % 생성된 데이터가 1인 경우 V로 전송
    
    N = sigma.*randn(1,X_num); % 잡음 N
    
    Y = X + N; % 수신신호
   
    %% BER of receiver
    e_num = 0;
    estimate=zeros(1,X_num);
    
    idx3 = find(Y<0);
    idx4 = find(Y>=0);
    estimate(idx3) = -V(k);
    estimate(idx4) = V(k);
    
    e_num=sum(estimate~=X);
    error_prob(k)=e_num/X_num;
    
end
%% 이론 값 구현
V_theo = [1:0.01:5];

theo_error = (1/2).*erfc(V_theo/(sqrt(2)*sigma));

figure(1)
semilogy(V_theo,theo_error,'b-');hold on;
semilogy(V,error_prob,'ro');
grid on;
title('Error Probability');
ylabel('P_e');
xlabel('V(voltage)');
legend('Theory','Simulation');

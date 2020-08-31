%% ���� ���� �ý��� �ʱⰪ ����
V = [1:0.5:5]; % Voltage
sigma = 1;
X_num=10^7; % ���� ������

for k = 1:length(V)
    
    X = zeros(1,X_num);
    %% Data Generation
    idx = rand(1, X_num);
    idx1 = find(idx < 0.5); % ������ �����Ͱ� 0�� ����
    idx2 = find(idx >= 0.5); % ������ �����Ͱ� 1�� ����
    
    X(idx1) = -V(k); % ������ �����Ͱ� 0�� ��� -V�� ����
    X(idx2) = V(k); % ������ �����Ͱ� 1�� ��� V�� ����
    
    N = sigma.*randn(1,X_num); % ���� N
    
    Y = X + N; % ���Ž�ȣ
   
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
%% �̷� �� ����
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

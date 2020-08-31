A = 1.3; N = 100;
X = A + randn(1, N);
s = 1; % 표준편차
rangeA = [-2:0.01:5];
L = zeros(1, length(rangeA));

for i = 1:length(rangeA)
    L(i) = prod(1./sqrt(2*pi*s^2).*exp(-(X-rangeA(i)).^2)./(2*s^2));
end
[maxL, index] = max(L);

figure(1)
plot(rangeA, L, 'b-'); hold on;
stem(rangeA(index), L(index), 'r');
displayText=['\leftarrow Likelihood of A = ' num2str(rangeA(index))];
title('Maximum Likelihood Estimation of unknown Parameter A');
xlabel('\leftarrow A');
ylabel('Likelihood');
text(rangeA(index), L(index)/3, displayText, 'HorizontalAlignment', 'left');

figure(2)
plot(rangeA, log(L), 'b-'); hold on;
YL = ylim; YMIN = YL(1);
plot([rangeA(index), rangeA(index)], [YMIN, log(L(index))], 'r-'); hold on;
title('Log Likelihood Function');
xlabel('\leftarrow A');
ylabel('Log Likelihood');
text([rangeA(index)], YMIN/2, displayText, 'HorizontalAlignment', 'left');

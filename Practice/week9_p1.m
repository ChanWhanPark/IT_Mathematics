X = [1:6];
PMF = 1/6.*ones(1, length(X));
CDF = cumsum(PMF)
U_rand = rand()

counter = 1
while(U_rand > CDF(counter))
    counter = counter + 1
end
X(counter)

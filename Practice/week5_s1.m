A = [1, 2; 3, 4];
r01 = transpose(transpose(A))

B = [4, 3; 2, 1];
r02 = transpose(A + B)
r03 = transpose(A) + transpose(B)

k = 2;
r04 = transpose(k * A)
r05 = k * transpose(A)

r06 = trace(transpose(A))
r07 = trace(A)

r08 = transpose(A * B)
r09 = transpose(B)*transpose(A)

r10 = inv(A * B)
r11 = inv(B) * inv(A)
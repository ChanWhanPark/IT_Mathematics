A = [1 2 ; 3 4]
B = [5 6 ; 7 8]

r01 = det(A * B)
r02 = det(A) * det(B)

r03 = det(A + B)
r04 = det(A) + det(B)

r05 = det(inv(A))
r06 = 1 / det(A)

r07 = det(A)
r08 = det(transpose(A))

k = 2;
B2 = [1 2 ; k*3 k*4]
r09 = det(B2)
r10 = k * det(A)

A2 = [3 4 ; 1 2];
r11 = det(A2)
r12 = -det(A)
A3 = [1 2 ; 2 4];
r13 = det(A3)

D = [1 0 0 ; 0 2 0 ; 0 0 3];
r14 = det(D)
r15 = 1 * 2 * 3

U = [1 2 3 ; 0 1 2 ; 0 0 1];
r16 = det(U)
r17 = 1 * 1 * 1

L = [1 0 0 ; 2 1 0 ; 3 2 1];
r18 = det(L)
r19 = 1 * 1 * 1

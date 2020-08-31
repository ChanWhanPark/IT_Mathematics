A = [-4 2 5 ; 2 -2 3 ; 1 3 7];

r1 = norm(A, 1)
r2 = norm(A, 2)
r3 = norm(A, 'fro')
r4 = norm(A, inf)

r5 = transpose(A)*A
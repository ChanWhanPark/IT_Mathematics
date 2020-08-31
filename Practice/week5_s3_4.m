%3
A = [ 1 2 3 ; 4 5 6 ; 7 8 9 ];
B = [ 9 8 7 ; 6 5 4 ; 3 2 1 ];

result1 = A * B
result2 = B * A
result3 = trace(result1)
result4 = trace(result2)

%4
result5 = trace(A + B)
result6 = trace(A) + trace(B)
k=3
result7 = trace(k*A)
result8 = k * trace(A)
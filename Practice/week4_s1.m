A = [0,0,0];
B = [1,2,1];
C = [2,1,2];

arrow3(A, B, '-b')
hold on;
arrow3(A, C, '-p')
hold on;
arrow3(B, C-B, '-r')

text(A(1), A(2), A(3), 'A(0, 0, 0)')
text(B(1), B(2), B(3), 'B(1, 2, 1)')
text(C(1), C(2), C(3), 'C(2, 1, 2)')

xlabel('x');
ylabel('y');
zlabel('z');
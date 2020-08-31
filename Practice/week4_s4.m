u = [5, -2, 1];
v = [0, 7, -3];
w = [4, 10, 0];

%(a)
r1 = dot(u, u);
r2 = norm(u)^2;
r1
r2

%(b)
r3 = dot(u, w);
r4 = dot(w, u);
r3
r4

%(c)
r5 = dot(u+v, w);
r6 = dot(w, u+v);
r5
r6

%(d)
r7 = dot(-2*u, v);
r8 = dot(u, -2*v);
r7
r8
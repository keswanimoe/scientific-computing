A =  [0.4 0.3 0; -0.7 1.4 -0.2; 0.4 -1.5 0.4];
b = [1.0; 1.5; -1.4];
D = [0.4 0 0; 0 1.4 0; 0 0 0.4];
n = 50;

[z] = jacobi(A, b, n);
x_exact = A\b;
e_k = z' - x_exact; 
j_e_k1 = (D\((D-A)*z' + b)) - x_exact; %jacobi
jr = abs(j_e_k1)./abs(e_k); %jacobi ratio
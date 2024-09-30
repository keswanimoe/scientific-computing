A =  [0.4 0.3 0; -0.7 1.4 -0.2; 0.4 -1.5 0.4];
b = [1.0; 1.5; -1.4];
D = [0.4 0 0; 0 1.4 0; 0 0 0.4];
L = [0.4 0 0; -0.7 1.4 0; 0.4 -1.5 0.4];
U = [0.4 0.3 0; 0 1.4 -0.2; 0 0 0.4];

x_exact = A\b;
e_k = z' - x_exact; 
r_e_k1 = ((eye(3)-A)*z'+b) - x_exact; %richardson

j_e_k1 = (D\((D-A)*x + b)) - x_exact; %jacobi

gs_e_k1 = ((D+L)\(b-U*z')) - x_exact; %gauss-seidel

%ratios

abs(r_e_k1)./abs(e_k);

abs(j_e_k1)/abs(e_k);

abs(gs_e_k1)/abs(e_k);

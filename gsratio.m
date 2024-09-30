A =  [0.4 0.3 0; -0.7 1.4 -0.2; 0.4 -1.5 0.4];
b = [1.0; 1.5; -1.4];
D = [0.4 0 0; 0 1.4 0; 0 0 0.4];
L = [0.4 0 0; -0.7 1.4 0; 0.4 -1.5 0.4];
U = [0.4 0.3 0; 0 1.4 -0.2; 0 0 0.4];
n = 30;

[z] = gauss_siedel(A, b, n);
x_exact = A\b;
e_k = z' - x_exact; 
G = D+L;
gs_e_k1 = (G\(b-U*z')) - x_exact; %gauss-seidel
gsr = abs(gs_e_k1)./abs(e_k); %gauss-seidel ratio





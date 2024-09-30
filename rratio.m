A =  [0.4 0.3 0; -0.7 1.4 -0.2; 0.4 -1.5 0.4];
b = [1.0; 1.5; -1.4];
n = 50;

[z] = richardson(A, b, n);
x_exact = A\b;
e_k = z' - x_exact; 

r_e_k1 = ((eye(3)-A)*z'+b) - x_exact; %richardson
rr = abs(r_e_k1)./abs(e_k); %richardson ratio


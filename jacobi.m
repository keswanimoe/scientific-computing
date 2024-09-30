function [z] = jacobi(A, b, n)
D = zeros(length(A)); %create memory
for i= 1:length(A)
D(i,i) = A(i,i);
end

%n number of iterations
x = zeros(3,1); %x0
G=D-A; %I-A

z = zeros(3); %create memory

for k=1:n
  x = D\(G*x + b) ;
  z(k, 1:3) = [x];
end
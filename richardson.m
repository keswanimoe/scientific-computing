function [z] = richardson(A, b, n)
%n number of iterations
x = zeros(length(A),1); %x0
G=eye(length(A))-A; %I-A
z = zeros(3); %create memory

for k=1:n
  x = G*x + b;
  z(k, 1:3) = [x];
end

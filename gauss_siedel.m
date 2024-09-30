function [z] = gauss_siedel(A, b, n)
D = zeros(length(A)); %create memory
U = zeros(length(A));
L = zeros(length(A));

for i = 1:length(A)
D(i,i) = A(i,i);
end

for i = 1:length(A)
    for j = 1:length(A)
        if i > j
            L(i,j) = A(i,j);
        end
    end
end

for i = 1:length(A)
    for j = 1:length(A)
        if i < j
            U(i,j) = A(i,j);
        end
    end
end

%n number of iterations
x = zeros(3,1); %x0
G=D+L; %I-A
z = zeros(3); %create memory

for k=1:n
  x = G\(b-U*x) ;
  z(k, 1:3) = [x];
end


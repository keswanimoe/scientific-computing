function [ak,ddif] = newton_ddif(xi, yi)
n = length(xi);
ddif = zeros(n);
for j = 1:n
    ddif(j,1) = yi(j); 
end

for j = 2:n 
    i = 1;
    % condition must be satisified to create matrx
    while n - (j - 1) >= i
        ddif(i,j) = (ddif(i+1,j-1) - ddif(i,j-1))/(xi(j+i-1) -  xi(i));
        i = i + 1;
    end
end
% coefficients ak are on the first diagonal of matrix ddif
ak = ddif(1,1:n).';
        
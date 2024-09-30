function [ak,ddif,yi,xi] = newton_ddif3(x)
n = 11; %p10 polynomial
ddif = zeros(n); 
yi = zeros(n,1);
xi = zeros(n,1);
%chebyshev nodes
for k = 1:n
xi(k) = cos(((2*k - 1)*pi)/(2*n));
yi(k) = cos((n*cos(xi(k)))^-1);
end

for j = 1:n
ddif(j,1) = yi(j); 
end
for j = 2:n
    i = 1;
    while n - (j - 1) >= i
        ddif(i,j) = (ddif(i+1,j-1) - ddif(i,j-1))/(xi(j+i-1) -  xi(i));
        i = i + 1;
    end
end
ak = ddif(1,1:n).';
n = length(xi); 

end 
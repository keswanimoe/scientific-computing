function [ak,ddif,yi] = newton_ddif2(xi)
n = length(xi);
ddif = zeros(n);
y = length(xi);
for k = 1:n
    yi(k) = (1 + (xi(k))^2)^-1;
end

for j = 1:n
    % filling col 1, from here we can fill the matrix iteratively
    ddif(j,1) = yi(j); 
end
% for-loop starting at col 2
for j = 2:n
    i = 1;
    % while loop so it's only filled with values we need
    while n - (j - 1) >= i
        ddif(i,j) = (ddif(i+1,j-1) - ddif(i,j-1))/(xi(j+i-1) -  xi(i));
        i = i + 1;
    end
end
% ak is the transpose of the first row of ddif
ak = ddif(1,1:n).';
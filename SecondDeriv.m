function [y2] = SecondDeriv(xi, yi)
%to make matrix T
n = length(xi);
a = zeros(n,1);
b = zeros(n,1);
c = zeros(n,1);
d = zeros(n,1);
for i = 2:n-1
    a(i) = (xi(i)-xi(i-1))/6;
    b(i) = (xi(i+1)-xi(i-1))/3;
    c(i) = (xi(i+1)-xi(i))/6;
    d(i) = ((yi(i+1)-yi(i))/(xi(i+1)-xi(i)))-((yi(i)-yi(i-1))/(xi(i)-xi(i-1)));
end

T = zeros(n-2);
for i = 2:n-1
    T(i,i) = b(i);
    T(i+1,i) = a(i+1);
    T(i,i+1) = c(i);
end
T(1,:) = []; T(:,1) = [];
T(size(T,2), :) = []; T(:,size(T,2)) = [];

d = d(2:n-1,1);

for i = 1:n-3
    s = T(i+1,i)/T(i,i);
    T(i+1,i+1) = T(i+1,i+1) - s*(T(i,i+1));
    d(i+1) = d(i+1) - s*(d(i));
end

y2(n-2) = d(n-2)/T(n-2,n-2);

for j = n-3:-1:1
    y2(j) = (d(j) - T(j,j+1)*y2(j+1))/T(j,j);
end 

y2 = y2';
end
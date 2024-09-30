function u1 = rungekutta(f, a, b, u0, h)
s = length(b);
n = length(u0);
k = zeros(s,n);
for i = 1:s
    k(i,:) = h.*f(u0 + (a(i,1:i-1))*k(1:i-1,:));
end
u1 = u0 + sum(b(1:s).*k(1:s,:));
end
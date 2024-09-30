function I = midpoint(f, a, b, nfev)
x = zeros(1, nfev-1);
xi = zeros(1, nfev-1);
h = (b-a)/nfev;
sum = 0;
for k = 1:nfev
    x(k)=k*h+(a+h/2);
    xi(k)=f(x(k));
    sum = sum+ xi(k);
end
I = h*sum;
end
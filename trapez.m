function [I] = trapez(f, a, b, nfev)
n = nfev-1;
x = zeros(1, nfev-1);
xi = zeros(1, nfev-1);
h = (b-a)/(nfev);
sum = 0;
for k = 1:n
    x(k)=a+k*h;
    xi(k)=f(x(k));
    sum = sum+ xi(k);
end
I = h/2*([f(a)+f(b)]+2*sum);
end

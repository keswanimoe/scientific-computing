function [I] = trapez(f, a, b, nfev)

h = (b-a)/nfev;
xi = a:h:b;
n = length(xi);

I = (h/2)*[f(a)+f(b)]+2*sum(f(xi(2):h:xi(n-1)));

end




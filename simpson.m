function [I] = simpson(f, a, b, nfev)
h = (b-a)/(nfev-1);
xodd = 0; xeven = 0;
if mod(nfev,2)== 0
    rprint('Error: Nfev must not be odd')
else
    n = nfev-1;
    for i=0:n/2-1
        odd = a+2*(i+(1/2))*h;
        even = a+2*(i+1)*h;
        xodd = xodd + f(odd);
        xeven = xeven + f(even);
    end
    I = (h/3)*(f(a)-f(b)+4*xodd+2*xeven);
end
end

function [x, nitr,ek] = secant(f, x0, x1, tol, N)
x = x1;
xp = x0;
fh = f(x1);
fp = f(x0);
n = 0;
nitr = 0;

while n <= N 
    if abs(fh) < tol 
        disp(x);
        break
    end
    
    fpx = (fh - fp)/(x-xp);
    if fpx < tol 
        
    end
    xp = x;
    fp = fh;
    x = x - fh/fpx;
    disp(x);
    ek = x - 2;
    fh = f(x);
    n = n + 1;
    nitr = nitr + 1;
if n > N
        fprintf(2, 'Maximum number of iterations reached.')
    end    
end
end
    
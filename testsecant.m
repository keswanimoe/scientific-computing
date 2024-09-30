function y = secant(f,x0,x1,N)
xn = (x0*f(x1) - x1*f(x0))/(f(x1) - f(x0));
disp('xn-2              f(xn-2)                 xn-1              f(xn-1)               xn              f(xn)');
disp(num2str([x0 f(x0) x1 f(x1) xn f(xn)],'%20.7f'));
flag = 1; 
while abs(f(xn)) > N
    x0 = x1;
    x1 = xn;
    xn = (x0*f(x1) - x1*f(x0))/(f(x1) - f(x0));
    
    disp(num2str([x0 f(x0) x1 f(x1) xn f(xn)],'%20.7f'));
    
    flag = flag + 1;
    if(flag == maxiter)
        break;
    end
end
if flag < maxiter
    display(['Root is x = ' num2str(xn)]);
else
    display('Root does not exist'); 
end
y = xn;
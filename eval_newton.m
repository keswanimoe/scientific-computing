function y = eval_newton(x, ak, xi) 
n = length(ak);
y = ak(n);
for i = n-1:-1:1
    y = ak(i) + y.*(x-xi(i));
end
end

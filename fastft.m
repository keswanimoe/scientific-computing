function [y] = fastft(x)
n = length(x);
o = exp((-1i)*2*pi/n);
if n == 1
    y(1) = x(1);
else
    for l = 1:(n/2)
        j = 2*l;
        p(l,1) = x(j-1); %even func
        s(l,1) = x(j); %odd func
    end
    q = fastft(p);
    t = fastft(s);
    for h = 0:n-1
        y(h+1,1) = q(mod(h,n/2)+1)+(o^h)*t(mod(h,n/2)+1);
    end   
end
end
function [S, x] = natural_cs2(xi, yi, y2)
a = min(xi); b= max(xi); x = a + (b-a).*rand(1,1); %needs to be in the interval
i = 1;
while x > xi(i)
    i = i + 1;
end
i = i-1;
    h(i) = xi(i+1)-xi(i);
    S = yi(i) + ((1/h(i))*(yi(i+1)-yi(i)) -(h(i)/6)*(y2(i+1)+2*y2(i)))*(x-xi(i))+(1/2)*y2(i)*((x-xi(i))^2)+ (1/6*h(i))*(y2(i+1)-y2(i))*((x-xi(i))^3);
end
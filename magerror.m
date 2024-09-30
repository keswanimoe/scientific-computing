clc;
clear all;
x = pi/4;
f = @tan;

for i= 2:52
    h(i-1) = 2^(-i);
end

for i=1:length(h)
    fp(i) = (f(x+h(i)) - f(x))/(h(i));
end

%taylors theorem
exact_s = 2;
merror = fp - exact_s;

loglog(h, merror, 'r-');
title('Plot of Error');
xlabel('Step Size h');
ylabel('Magnitude of Error');







    

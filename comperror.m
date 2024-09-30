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

loglog(h, merror, 'r-'); hold on
plot((4*h)/2,h, '--') %truncation error with M=1
plot((2*eps)./h,h, '--') %rounding error using 2.0000e-16
hold off
title('Plot of Computational Error in the Finite Difference Approximation');
xlabel('Step Size h');
ylabel('Magnitude of Error');

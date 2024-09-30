n = length(x);
a = 0; %create memory

n = length(x);
a = 0; %create memory
for i = 1:n
    a = a + x(i); %sum of xi
end
m = a/n; %mean

b = 0; %create memory
for i = 1:n
    b = b + (x(i)-m)^2; %sum of xi minus mean squared
end

sd = sqrt(b/(n-1)); %standard deviation
disp(m);
disp(sd);
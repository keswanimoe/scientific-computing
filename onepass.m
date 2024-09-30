n = length(x);
a = 0; %create memory
b = 0; %create memory
for i = 1:n
    a = a + x(i);
    b = b + (x(i))^(2); %sum of xi minus mean squared
end
m = a/n; %mean
sd1 = sqrt((b-n*(m^2))/(n-1)); %standard deviation
disp(m);
disp(sd1);
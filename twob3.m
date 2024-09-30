clear all;
clc;

h = 2;
k = 52;

for i = 2:k
 
    h = 2^(-i);
    x = pi/4;
    f = @tan;
    fp = fdiff(f,x,h(i));
    
    %taylors theorem
    exact_s = 2;
   
    m.error(i) = exact_s-fp;
end

loglog(h,m.error, 'LineWidth', 2, 'LineStyle', 'v');

    

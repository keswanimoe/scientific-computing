f = @(d) [-d(2)-d(3); d(1)+0.15*d(2); 0.2+d(3)*(d(1)-10)];
h = 0.05;
t = [0:h:20];
u0 = [5, 5, 5];
a = [0,0,0,0; 1/2,0,0,0; 0,1/2,0,0; 0,0,1,0];
b = [1/6;1/3;1/3;1/6];
n = length(t);
M = u0;
for i = 2:n
    u1 = rungekutta(f, a, b, u0, h);
    M(i, :) = u1;
    u0 = u1;
end

plot(t,M(:,1),'r'); hold on;
plot(t,M(:,2),'g');
plot(t,M(:,3),'b');
legend('x','y', 'z')
hold off;
function z = Richardson

A =  [0.4 0.3 0; -0.7 1.4 -0.2; 0.4 -1.5 0.4];
b = [1.0; 1.5; -1.4];
x = zeros(3,1);
G=eye(3)-A; %I-A
z = zeros(3);
for k=1:49
  x = G*x + b;
  z(k, 1:3) = [x];
end

disp(z);
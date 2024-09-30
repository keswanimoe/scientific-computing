clear all;
clc;
k = 2:h:52; %grid
h = 2^(-k); %step size
x = logspace(-2, -52); 

fp = fdiff(@tan, x, h);
kdiff = x*(1:length(x)-1); %grid

%taylors series? to find exact
exact_diff = (cos(kdiff)*cos(kdiff)+sin(kdiff)*sin(kdiff))/(cos(kdiff)*cos(kdiff)+1);

loglog(kdiff, fp, 'LineStyle', '__'); hold on
loglog(kdiff, exact_diff);









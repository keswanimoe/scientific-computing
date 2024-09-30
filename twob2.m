clear all;
clc;

h = logspace(2^(-2), 2^(-52));

xdiff = h(1:length(h)-1);

x = pi/4;

fp = fdiff(@tan,x,h);
exact_diff = (cos(x).*cos(x)+sin(x).*sin(x))./(cos(x).*cos(x)+1);


loglog(xdiff, fp); hold on
loglog(xdiff, exact_diff);

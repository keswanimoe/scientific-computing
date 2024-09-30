function fp = fdiff(f,x,h)
if h<=0
    error('h must be strictly positive');
end

fp = (f(x+h) - f(x))/(h); %forward difference
end


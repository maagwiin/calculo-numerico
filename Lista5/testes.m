clear
clc
f = @(x) e^x;
a = trapezio(f, [0, 0.6], 6);
a
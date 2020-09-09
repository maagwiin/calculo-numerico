clear
clc

f = @(x) 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5;
#f = @(x) e^x;
#f = @(x) (x^2)*log(x);
#f = @(x) 1/x;

passo = 4;
intervalo = [0.1, 0.5];

a = trapezio(f, intervalo, passo);
b = simpson(f, intervalo, passo);

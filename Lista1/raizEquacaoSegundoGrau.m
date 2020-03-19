function [x1, x2] = raizEquacaoSegundoGrau(a, b, c)
    delta = b^2 - 4*a*c;
    
    if(delta > 0)
        x1 = (-b + sqrt(delta))/2*a;
        x2 = (-b - sqrt(delta))/2*a;
        fprintf("\As raízes reias de %.2fx² + %.2fx + %.2f são: %.2f e %.2f\n", a, b, c, x1, x2);
    elseif(delta == 0)
        x1 =(-b + sqrt(delta))/2*a;
        fprintf("\A única raiz de %.2fx² + %.2fx + %.2f é: %.2f\n", a, b, c, x1);
    else
        fprintf("\n%.2fx² + %.2fx + %.2f não tem raízes reais\n", a, b, c);
    end
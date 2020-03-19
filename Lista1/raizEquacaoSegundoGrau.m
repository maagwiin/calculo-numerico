%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Referente a: L1Q4
%ta errado, trocar procedimentos por funções


function [x1, x2] = raizEquacaoSegundoGrau(a, b, c)
    delta = b^2 - 4*a*c;
    
    if(delta > 0)
        x1 = (-b + sqrt(delta))/2*a;
        x2 = (-b - sqrt(delta))/2*a;
        fprintf("\nAs raízes reais de %.2fx² + %.2fx + %.2f são: %.2f e %.2f\n", a, b, c, x1, x2);
    elseif(delta == 0)
        x1 =(-b + sqrt(delta))/2*a;
        fprintf("\nA única raiz de %.2fx² + %.2fx + %.2f é: %.2f\n", a, b, c, x1);
    else
        x1 = (-b + sqrt(delta))/2*a;
        x2 = (-b - sqrt(delta))/2*a;
        fprintf("\n%.2fx² + %.2fx + %.2f não tem raízes reais\n", a, b, c);
        fprintf("Suas raízes complexas são: %.2f+%.2fi e %.2f%.2fi\n", x1, imag(x1), x2, imag(x2));
    end
end
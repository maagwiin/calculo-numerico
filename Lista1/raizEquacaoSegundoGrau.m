%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Referente a: L1Q4
%ta errado, trocar procedimentos por fun��es


function [x1, x2] = raizEquacaoSegundoGrau(a, b, c)
    delta = b^2 - 4*a*c;
    
    if(delta > 0)
        x1 = (-b + sqrt(delta))/2*a;
        x2 = (-b - sqrt(delta))/2*a;
        fprintf("\nAs ra�zes reais de %.2fx� + %.2fx + %.2f s�o: %.2f e %.2f\n", a, b, c, x1, x2);
    elseif(delta == 0)
        x1 =(-b + sqrt(delta))/2*a;
        fprintf("\nA �nica raiz de %.2fx� + %.2fx + %.2f �: %.2f\n", a, b, c, x1);
    else
        x1 = (-b + sqrt(delta))/2*a;
        x2 = (-b - sqrt(delta))/2*a;
        fprintf("\n%.2fx� + %.2fx + %.2f n�o tem ra�zes reais\n", a, b, c);
        fprintf("Suas ra�zes complexas s�o: %.2f+%.2fi e %.2f%.2fi\n", x1, imag(x1), x2, imag(x2));
    end
end
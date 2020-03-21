%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: 

clear; %limpa as variáveis
clc; %limpa a command window

fprintf("Sendo a função ax² + bx + c:\n");
a = input("Digite a: ");
b = input("Digite b: ");
c = input("Digite c: ");

[x1, x2] = raizEquacaoSegundoGrau(a, b, c);

if(imag(x1) || imag(x2))
    fprintf("\n%.2fx² + %.2fx + %.2f não tem raízes reais\n", a, b, c);
    fprintf("Suas raízes complexas são: %.2f+%.2fi e %.2f%.2fi\n", x1, imag(x1), x2, imag(x2));
elseif(x1 == x2)
    fprintf("\nA única raiz real de %.2fx² + %.2fx + %.2f é: %.2f\n", a, b, c, x1);
else
    fprintf("\nAs raízes reais de %.2fx² + %.2fx + %.2f são: %.2f e %.2f\n", a, b, c, x1, x2);
end



%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: 

clear; %limpa as vari�veis
clc; %limpa a command window

fprintf("Sendo a fun��o ax� + bx + c:\n");
a = input("Digite a: ");
b = input("Digite b: ");
c = input("Digite c: ");

[x1, x2] = raizEquacaoSegundoGrau(a, b, c);

if(imag(x1) || imag(x2))
    fprintf("\n%.2fx� + %.2fx + %.2f n�o tem ra�zes reais\n", a, b, c);
    fprintf("Suas ra�zes complexas s�o: %.2f+%.2fi e %.2f%.2fi\n", x1, imag(x1), x2, imag(x2));
elseif(x1 == x2)
    fprintf("\nA �nica raiz real de %.2fx� + %.2fx + %.2f �: %.2f\n", a, b, c, x1);
else
    fprintf("\nAs ra�zes reais de %.2fx� + %.2fx + %.2f s�o: %.2f e %.2f\n", a, b, c, x1, x2);
end



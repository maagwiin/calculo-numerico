%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: 

clear; %limpa as vari�veis
clc; %limpa a command window


val = input("Digite o valor: ");

a = 1;
s = val + a;

while(s > val)
    a = a/2;
    s = val + a;
end

prec = 2*a;

fprintf("\nUsando o Valor %d, a precis�o da m�quina �: ", val);
disp(prec);


%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as vari�veis
clc; %limpa a command window

n = input("Digite um n�mero inteiro para verificar se � perfeito: ");

somadivisores = 0;
for i = 1:(n/2)
    if(mod(n,i) == 0)
        somadivisores = somadivisores + i;
    end
end
if(somadivisores == n)
    fprintf("%i � um n�mero perfeito\n",n);
else
    fprintf("%i n�o � um n�mero perfeito\n",n);
end
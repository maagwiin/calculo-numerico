%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

clear; %limpa as variáveis
clc; %limpa a command window

n = input("Digite um número inteiro para verificar se é perfeito: ");

somadivisores = 0;
for i = 1:(n/2)
    if(mod(n,i) == 0)
        somadivisores = somadivisores + i;
    end
end
if(somadivisores == n)
    fprintf("%i é um número perfeito\n",n);
else
    fprintf("%i não é um número perfeito\n",n);
end
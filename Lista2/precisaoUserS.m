%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira

%Programa com precisão simples

%Feito no MATLAB
%teste no Octave: 

clear; %limpa as variáveis
clc; %limpa a command window


val = input("Digite o valor: ");

prec = 0;
a = 1;
s = val + a;

while(s > val)
    a = single(a/2);
    s = single(val + a);
end

prec = single(2*a);


fprintf("\nUsando o Valor %d, a precisão da máquina é: ", val);
disp(prec);



%
%   Usando a função single(), forçamos o Matlab/Octave a usar variáveis de precisão simples, ou seja, cada variável tem um espaço 
%   de 32 bits (4 Bytes), sendo 23 bits para a fração da variável, 8 bits para o expoente e 1 para o sinal.
%
%
%   Conclusão: O valor de 'prec' muda nos diferentes programas pois quanto maior o espaço da memória reservada para uma variável,
%   maior será sua precisão, ou seja, podemos declarar variáveis com numéros inteiros bem maiores (|x| > 1) e partes fracionarias
%   com mais casas decimais.
%
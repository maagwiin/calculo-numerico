%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira

%Programa com precisão simples

%Feito no MATLAB
%teste no Octave: 

clear; %limpa as vari�veis
clc; %limpa a command window


val = single([10 17 100 184 1000 1575 10000 17893]);


for i = 1:8
    prec = 0;
    a = 1;
    s = val(i) + a;
    while(s > val(i))
        a = single(a/2);
        s = single(val(i) + a);
    end
   
    prec = single(2*a);

    fprintf("\nUsando o Valor %d, a precis�o da m�quina �: ", val(i));
    disp(prec);
  
end    

%
%   Usando a função single(), forçamos o Matlab/Octave a usar variáveis de precisão simples, ou seja, cada variável tem um espaço 
%   de 32 bits (4 Bytes), sendo 23 bits para a fração da variável, 8 bits para o expoente e 1 para o sinal.
%
%
%   Conclusão: O valor de 'prec' muda nos diferentes programas pois quanto maior o espaço da memória reservada para uma variável,
%   maior será sua precisão, ou seja, podemos declarar variáveis com numéros inteiros bem maiores (|x| > 1) e partes fracionarias
%   com mais casas decimais.
%
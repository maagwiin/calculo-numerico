%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira

%Programa com precisão dupla

%Feito no MATLAB
%teste no Octave: 

clear; %limpa as vari�veis
clc; %limpa a command window


val = [10 17 100 184 1000 1575 10000 17893];


for i = 1:8
    prec = 0;
    a = 1;
    s = val(i) + a;
    while(s > val(i))
        a = a/2;
        s = val(i) + a;
    end
   
    prec = 2*a;

    fprintf("\nUsando o Valor %d, a precis�o da m�quina �: ", val(i));
    disp(prec);
  
end    

%
%   Por padrão, o matlab/octave declara as variáveis com precisão dupla, ou seja, cada variável tem um espaço
%   de 64 bits (8 Bytes), sendo 52 bits para a fração da variável, 11 bits para o expoente e 1 bit para o sinal.
%
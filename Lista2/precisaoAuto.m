%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

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


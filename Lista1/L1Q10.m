%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave:

clear; %limpa as vari�veis
clc; %limpa a command window

mult = 1;
graos = 1;
for i=1:64
    disp(mult);
    disp(graos);
    mult = mult*2;
    graos = graos + mult;
end
disp(mult);
disp(graos);
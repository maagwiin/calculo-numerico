%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave:

clear; %limpa as vari�veis
clc; %limpa a command window

kwh = input("Digite a quantidade de energia el�trica consumida, em KWh: ");
preco = 0.27;

pagar = preco*kwh;

if(pagar < 13)
    pagar = 13;
end

fprintf("Voc� dever� pagar R$ %.2f.\n", pagar);
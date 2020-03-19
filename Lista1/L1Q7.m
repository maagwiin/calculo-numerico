%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave:

clear; %limpa as variáveis
clc; %limpa a command window

kwh = input("Digite a quantidade de energia elétrica consumida, em KWh: ");
preco = 0.27;

pagar = preco*kwh;

if(pagar < 13)
    pagar = 13;
end

fprintf("Você deverá pagar R$ %.2f.\n", pagar);
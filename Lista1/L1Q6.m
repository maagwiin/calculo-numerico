%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave: OK

%restringir input de 1 a 5

clear; %limpa as variáveis
clc; %limpa a command window

fprintf("Gabarito:\n");
for i = 1:10
    fprintf("%dª ", i);
    gabarito(i) = input("questão: ");
end

clc;

fprintf("O gabarito é: ");
disp(gabarito);

fprintf("Respostas aluno:\n");
for i = 1:10
    fprintf("%dª ", i);
    respostas(i) = input("questão: ");
end

clc;

fprintf("Gabarito:\n");
acertos = 0;
for i = 1:10
    if(respostas(i) == gabarito(i))
        acertos = acertos + 1;
    end
end

fprintf("O aluno acertou %i questões\n", acertos);
%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Feito no MATLAB
%teste no Octave:

%restringir input de 1 a 5

clear; %limpa as vari�veis
clc; %limpa a command window

fprintf("Gabarito:\n");
for i = 1:10
    gabarito(i) = input(i + "� quest�o: ");
end

clc;

fprintf("O gabarito �: ");
disp(gabarito);

fprintf("Respostas aluno:\n");
for i = 1:10
    respostas(i) = input(i + "� quest�o: ");
end

clc;

fprintf("Gabarito:\n");
acertos = 0;
for i = 1:10
    if(respostas(i) == gabarito(i))
        acertos = acertos + 1;
    end
end

fprintf("O aluno acertou %i quest�es\n", acertos);
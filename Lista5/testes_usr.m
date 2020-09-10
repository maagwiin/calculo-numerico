% Listas de Implementação Cálculo Numérico 20/1
% Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira
%
% Script de testes: Integração Numérica (com usuário)
%
% Feito no Octave

clear;
clc;

f = input('Digite a função a ser integrada "@(x) ...": ');
intervalo = input('Digite o intervalo de integração "[a, b]": ');
segTrapezio = input('Digite o número de repetições (segmentos) para o método do trapézio: ');
segSimpson = input('Digite o número de segmentos para o método de Simpson (PAR): ');

It = trapezio(f, intervalo, segTrapezio);
Is = simpson(f, intervalo, segSimpson);

clc;
fprintf('Integral numérica de "%s" no intervalo [%.3f, %.3f]:\n -Trapézio: %f\n -Simpson: %f\n\n', func2str(f), intervalo(1), intervalo(2), It, Is);
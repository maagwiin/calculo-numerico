% Listas de Implementação Cálculo Numérico 20/1
% Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira
%
% Script de testes: Integração Numérica
%
% Feito no Octave

clear;
clc;

  % Funcoes:
%f = @(x) 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5;
f = @(x) e^x;
%f = @(x) (x^2)*log(x);
%f = @(x) 1/x;

  % Parametros:
segmentosTrapezio = 6;  % Quantidade de segmentos no metodo do trapezio
segmentosSimpson = 4;   % Quantidade de segmentos no metodo de simpson (PAR)
intervalo = [0, 0.6];   % Intervalo de integracao

  
  % Funcoes:
It = trapezio(f, intervalo, segmentosTrapezio);
Is = simpson(f, intervalo, segmentosSimpson);

fprintf('Integral numérica de "%s" no intervalo [%.3f, %.3f]:\n -Trapézio: %f\n -Simpson: %f\n\n', func2str(f), intervalo(1), intervalo(2), It, Is)

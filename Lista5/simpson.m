% Listas de Implementação Cálculo Numérico 20/1
% Magnu Windell Araujo Santos e Guilherme Lopes de Oliveira
%
% Função de integração numérica método de Simpson
%
% Feito no Octave


function I = simpson(funcao, intervalo , passo)
  a = intervalo(1);
  b = intervalo(2);
  
  if passo < 2
    passo = 2;
  endif
  
  h = (b-a)/passo;
  I = 0;

  for i=1:2:(passo-1)
     indice = a+h*i;
     I = I + 4*funcao(indice);
  endfor
  
  for j=2:2:(passo-1)
     indice = a+h*j;
     I = I + 2*funcao(indice);
  endfor
  
  I = h*(I +(funcao(a) + funcao(b)))/3;
  
endfunction
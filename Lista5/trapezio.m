
function I = trapezio(funcao, intervalo, passo)
  a = intervalo(1);
  b = intervalo(2);
  
  if passo < 1
    passo = 1;
  endif
  
  h=(b-a)/passo;
  I=0;
  
  for i=1:(passo-1)
     indice = a+h*i;
     I = I + funcao(indice);
  endfor
  
  I=h*(funcao(a)+funcao(b))/2+(h*I);
endfunction
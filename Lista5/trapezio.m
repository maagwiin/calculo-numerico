function I = trapezio(funcao, intervalo, passo)
  a = intervalo(1);
  b = intervalo(2);
  
  if passo < 2
    h = b - a;
    I = (h/2)*(funcao(a) + funcao(b));
    
  else
    h = (b - a)/passo;
    I = 0;
    indice = a+h;
    
    for i = 1:passo-1
      parcial = funcao(indice);
      I = I + parcial;
      indice = indice+h;
    endfor
    
    I = (2*I + funcao(a) + funcao(b))/(2*passo);
    I = (b-a)*I;
  endif
  
endfunction
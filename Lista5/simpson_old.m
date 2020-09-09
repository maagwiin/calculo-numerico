function I = simpson_old(funcao, intervalo, passo)
  a = intervalo(1);
  b = intervalo(2);
  
  
  if passo < 2
    h = (b - a)/2;
    I = ((b-a)/6)*(funcao(a)+4*funcao(h)+funcao(b));
    
  else
    h = (b - a)/passo;
    I = 0;
    indice = a+h;
    I_par = 0;
    I_impar = 0; 
    p=0;
    for i = 1:passo-1
      if p == 0
        parcial = funcao(indice);
        I_impar = I_impar + parcial;
        p = 1;
      else
        parcial = funcao(indice);
        I_par = I_par + parcial;
        p = 0;
      endif
      
      indice = indice+h;
    endfor
    
    I_impar = 4*I_impar;
    I_par = 2*I_par;
    I = ((b-a)*((funcao(a)+I_par+I_impar+funcao(b))/(3*passo)));
  endif
  
endfunction

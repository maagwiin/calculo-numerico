%Listas de Implementa��o C�lculo Num�rico 20/1
%Magnu Windell Araujo Santos

%Referente a: L1Q5
%n�o � ideal

function mdc = calcularMDC(x, y)
    vetor(1) = x;
    vetor(2) = y;
    i = 2;
    while(vetor(i) ~= 0)
        i=i+1;
        vetor(i) = mod(vetor(i-2), vetor(i-1));
    end
    mdc = vetor(i-1);
return 
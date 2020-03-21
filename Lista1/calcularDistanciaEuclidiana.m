%Listas de Implementação Cálculo Numérico 20/1
%Magnu Windell Araujo Santos

%Referente a: L1Q9

function distancia = calcularDistanciaEuclidiana(p, q)
    n = length(p);
    somatorio = 0;
    for i = 1:n
        somatorio = somatorio + (p(i)-q(i))^2;
    end
    distancia = sqrt(somatorio);
end
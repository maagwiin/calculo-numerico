function [raizAproximada, valorFuncao, iteracao] = bisseccao(funcao, intervalo, precisao, max_iteracoes)

    fprintf("Método da Bissecção:\n");
    
    a = intervalo(1);
    b = intervalo(2);
    amplitude = b-a;
    
    if(amplitude<precisao)
        raizAproximada = (a+b)/2;
        valorFuncao = funcao(raizAproximada);
        iteracao = 0;
        return;
    end
 
    k = 1;
    M = funcao(a);

    while(k <= max_iteracoes)
        fprintf("\n%d: a = %f --- b = %f\n", k, a, b);
        x = (a+b)/2;
        fx = funcao(x);
        if(fx*M > 0)
            a = x;
        else
            b = x;
        end  
        amplitude = b-a;
        fprintf("   x = %f --- fx = %f --- amp. = %f\n", x, fx, amplitude);
        if(amplitude<precisao)
            raizAproximada = x;
            valorFuncao = funcao(raizAproximada);
            iteracao = k;
        return;
        end
        k=k+1;
    end
    raizAproximada = x;
    valorFuncao = funcao(raizAproximada);
    iteracao = k;
end
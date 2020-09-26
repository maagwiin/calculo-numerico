function [raizAproximada, valorFuncao, iteracao] = posicaofalsa(funcao, intervalo, precisao, max_iteracoes)
    fprintf("Método da Posição Falsa:\n");
    
    a = intervalo(1);
    b = intervalo(2);
    amplitude = b-a;
    
    if(amplitude<precisao)
        raizAproximada = (a+b)/2;
        valorFuncao = funcao(raizAproximada);
        iteracao = 0;
        return;
    end
    
    if(abs(funcao(a)) < precisao)
        raizAproximada = a;
        valorFuncao = funcao(raizAproximada);
        iteracao = 0;
        return;
    elseif(abs(funcao(b)) < precisao)
        raizAproximada = b;
        valorFuncao = funcao(raizAproximada);
        iteracao = 0;
        return;
    end
 
    k = 1;
    m = funcao(a);
    
    while(k <= max_iteracoes)
        fprintf("\n%d: a = %f --- b = %f\n", k, a, b);
        x = (a*funcao(b) - b*funcao(a))/(funcao(b)-funcao(a));
        fx = funcao(x);
        
        if(abs(fx) < precisao)
            raizAproximada = x;
            valorFuncao = funcao(raizAproximada);
            iteracao = k;
            fprintf("   x = %f --- fx = %f --- amp. = %f\n", x, fx, amplitude);
            return;
        end
        
        if(m*fx > 0)
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
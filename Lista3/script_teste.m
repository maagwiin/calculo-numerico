f = @(x) x^3 - x - 1;
I = [1, 2];
precisao = 0.0000000000000000000000000000001;
max_iteracoes = 10000000;

[x, fx, iteracao] = posicaofalsa(f, I, precisao, max_iteracoes);

fprintf("\n\nResultado: ~x = %f --- f(~x) = %f --- k = %d\n\n\n", x, fx, iteracao); 
function [x, M] = newton_pn(n, a, xi)

    # passos do algoritmo:
    # delta_x = - Pn(x)^(M-1) / Pn(x)^(M) % Em Pn(x)^(M-1) o ^ representa a ordem da derivada
    # x = xi + delta_x
    # xi = x
    
    delta_x = 1;
    iteracao = 0;
    while abs(delta_x) > 1e-14 && iteracao < 100
        iteracao = iteracao + 1;
        
        # Pn(xi)^M = M! * R(M+1) # R = resto
        # delta_x = -R(M) / (M * R(M+1)) # R = restos da divisão de Pn(x) por x-xi (Briot Ruffini)
        R = restos(n, a, xi);

        M = getM(R); # Calcular M em função dos restos (soma de restos < 0.1 indica multiplicidade + 1)
        delta_x = - R(M) / (M * R(M+1));  #delta_x = - Pn^(M-1) / Pn^(M)
        
        # calcular o x final
        x = xi + delta_x;
        xi = x;
    end
end

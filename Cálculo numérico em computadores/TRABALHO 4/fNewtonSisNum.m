function X=fNewtonSisNum(n,Xi)

tol=1e-14;
criterio=1;contador=0;
for i=1:n Dx(i)=1e-6; end
while (criterio>tol && contador<200)
    contador=contador+1;
    %Gerando a jacobiana
    Yi=G(Xi); %Valor inicial
    Xj=Xi;
    for j=1:n %varre as colunas
        Xj(j)=Xi(j).+Dx(j); %incremento na coluna j
%            for i=1:n
                A(:,j)=(G(Xj) .- Yi)/Dx(j); 
%            end
            Xj=Xi;% volta ao valor original
    end
    B(:,1)=-Yi;
    Dx=A\B;
    X=Xi+0.1*Dx;
    Xi=X;
    criterio=min(abs(Dx));
end
contador;
criterio;
end
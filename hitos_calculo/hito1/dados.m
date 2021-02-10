
% EJERCICIOS 1 Y 2
for n=[2, 10, 30, 100]
    funcionMasa = funcionMasaPara(n);

    % convertimos los cell arrays que forman la tabla de hash en vectores, que es la estructura
    % de datos que la función plot entiende
    [valores, probabilidades] = getVectorFrom(funcionMasa);
    
    figure
    plot(valores, probabilidades, "b o", "MarkerSize", 10, "MarkerFaceColor", "g");
    title("N = " + n);
    xlabel("Z_{" + n + "}=k");
    ylabel("P(Z_{" + n + "}=k)");

    
end
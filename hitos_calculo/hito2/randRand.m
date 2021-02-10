% EJERCICIO 1

% la pdf de una variable aleatoria es una función continua. Sin embargo, para calcularla
% de manera numérica hay que calcular el valor que adopta la función en puntos discretos y luego
% interpolarlos. La variable delta es la distancia que hay entre esos puntos
delta = 0.1;

% EJERCICIO 1 Y 3
for i=[2, 3, 10, 30]
    pdfSumVars = pdfSumaVariablesU(i, delta);
    x = 0:delta:i;

    figure
    plot(x, pdfSumVars(x));
    title("N = " + i);
end

% EJERCICIO 2
% la probabilidad de que el valor de una variable aleatoria esté entre a y b es el area
% que hay debajo de la pdf de la función 

sumUniforme2 = pdfSumaVariablesU(2, delta);

limiteInferior = 0.75;
limiteSuperior = 1.25;

prob = integral(sumUniforme2, 0.75, 1.25);

disp("La probabilidad de que la suma de dos números uniformemente distribuidos esté entre " + limiteInferior + " y " + limiteSuperior + " es:");
disp(prob)
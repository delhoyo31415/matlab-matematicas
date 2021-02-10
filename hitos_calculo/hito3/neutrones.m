
% neutrones inciden perpendicularmente sobre una placa (90 grados)

% cada neutrón choca contra los átomos que forman la placa, pudiendo
% rebotar en cualquier dirección con la misma probabilidad

% todo material tiene dos parámetros propios del mismo: 
    % sección de absorción (deltaA)
    % sección de dispersión (deltaB)
% la suma de esos dos parámetros se denomina la sección total (delta)
    % deltaA / delta es la probabilidad de que el neutrón se absorbido
    % deltaB / delta es la probabilidad de que el neutrón rebote

% la distancia recorrida entre choque y choque es una varible exponencial con
% con parámetro delta. Esta se puede generar fácilmente utilizando una variable 
% aleatoria uniformemente distribuida

secTotal = 5;
secAbs = 1;
l = 1;
n = 100000;

[probAtravesar, probAbs, probDisp] = simulacionNeutrones(secTotal, secAbs, l, n);

disp("Probabilidad de que un neutrón atraviese la placa: " + probAtravesar)
disp("Probabilida de que un neutón sea absorbido: " + probAbs)
disp("Probabilidad de que un netrón rebote contra la placa: " + probDisp)
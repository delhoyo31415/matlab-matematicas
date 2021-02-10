
% n es el número de neutrones
% secAbs es la sección de absorción
% secDisp es la sección de dispersión
% l es el ancho de la placa en cm

% probAtravesar es la probabilidad empírica de que un neutrón atraviese la placa
% probAbs es la probabilidad de que sea absobido
% probDisp es la probabilida de que sea dispersado 
function [probAtravesar, probAbs, probDisp] = simulacionNeutrones(secTotal, secAbs, l, n)
    probAtravesar = 0;
    probAbs = 0;
    probDisp = 0;

    for i=1:n
        [atr, absor, disper] = simulacionNeutron(secTotal, secAbs / secTotal, l);
        
        probAtravesar = probAtravesar + atr;
        probAbs = probAbs + absor;
        probDisp = probDisp + disper;
    end

    probAtravesar = probAtravesar / n;
    probDisp = probDisp / n;
    probAbs = probAbs / n;

end
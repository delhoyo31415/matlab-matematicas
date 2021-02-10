
function [atr, absor, disper] = simulacionNeutron(secTotal, probAbs, l)
    atr = 0;
    absor = 0;
    disper = 0;

    % posX es la componente X del vector posicion. Como el neutrón incide perpendicularment
    % la componente del vector coincide con la distancia recorrida 
    posX = 0;
    randCos = 1;

    while atr + absor + disper == 0
        % actualizamos la posición
        recLibre = -1 / secTotal * log(rand);
        posX = posX + randCos * recLibre;
        
        % comprobamos el estado del neutrón
        if posX > l
            atr = 1;
        elseif posX < 0
            disper = 1;
        elseif rand < probAbs
            absor = 1;
        else
            randCos = cos(2*pi*rand); 
        end
    end
end
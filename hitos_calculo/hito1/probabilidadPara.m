% la demostración de este procedimiento se encuentra en el pdf ubicado en el mismo
% directorio donde están los archivos de esta práctica.

function [prob] = probabilidadPara(j, funcionMasa)
    prob = 0;

    % un término de la suma que calcula la probabilidad de que la suma de variables
    % aleatorias contribuye a la misma si ninguno de los dos factores que componen
    % la suma es no nulo. Uno de ellos tiene el valor de 1 / 6 siempre y cuando el valor de k
    % se encuentre entre 1 y 6. De lo contrario es 0 y no contribuye a la suma. Por tanto, solo nos
    % interesan los valores de k (en el código i) que estén entre 1 y 6. 

    for i = 1:6
        % isKey comprueba que una clave se encuentra en la tabla de Hash.
        % De no encontrarse, es porque ese valor tiene una probabilidad nula y 
        % por tanto, no contribuye a la probabilidad total (la variable prob)
        if isKey(funcionMasa, j - i)
            prob  = prob + funcionMasa(j - i);
        end
    end

    % la propiedad distributiva justifica este paso
    prob = prob * 1 / 6;
end

% X := numero que resulta de lanzar un dado sin trucar
% devuelve la funcion de masa de la variable definida como la suma de n diferentes X


function [funcionMasa] = funcionMasaPara(n)
    % para codificar la función, voy a usar una estructura de datos que ya viene implementada
    % en MATLAB llamada tabla de Hash. Más información en 
    % https://es.mathworks.com/help/matlab/matlab_prog/overview-of-the-map-data-structure.html
    
    % crea la función de masa para n = 1
    % la probabilidad de que salga cualquier número al lanzar un dado sin trucar es uniforme
    funcionMasa = containers.Map(1:6, 1 / 6 * ones([1, 6]));

    for i = 2:n
        funcionMasaCalcular = containers.Map('KeyType', 'int32', 'ValueType', 'double');


        % si i es el número de variable aleatorias que se han sumado, la función de masa de 
        % esa variable aleatoria tendrá valores no nulos para los enteros que se encuentran
        % en el intervalo [i, i * 6]
        for j = i:i*6
            funcionMasaCalcular(j) = probabilidadPara(j, funcionMasa);
        end

        % actualizamos la distribución
        funcionMasa = funcionMasaCalcular;
    end

end

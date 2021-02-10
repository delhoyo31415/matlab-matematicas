
% función para convertir las claves y los valores de la tabla de Hash
% en vectores
function [k, v] = getVectorFrom(hashMap)

    kt = keys(hashMap);
    vt = values(hashMap);

    k = [kt{:}];
    v = [vt{:}];

end
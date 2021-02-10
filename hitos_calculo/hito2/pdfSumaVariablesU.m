
function [pdfContinua] = pdfSumaVariablesU(n, delta)
    pdfContinua = @(x) pdf("uniform", x, 0, 1);

    for i=2:n
        soporteDiscreto = 0:delta:i;
        probPdf = zeros([1, length(soporteDiscreto)]);
        
        for j=1:length(soporteDiscreto)
            probPdf(j) = integral(@(x) pdfContinua(soporteDiscreto(j) - x), 0, 1);
        end

        % aproximamos la pdf continua interpolando linealmente la pdf discreta
        pdfContinua = @(x) interp1(soporteDiscreto, probPdf, x, "linear", 0);
    end
    
end

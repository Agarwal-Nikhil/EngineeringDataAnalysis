function [k,a] = Weibull_fit_dist(SampleData)
    SampleSize = size(SampleData, 1);
    SampleMean = sum(SampleData)/SampleSize;
    SquaredDeviations = (SampleData - SampleMean).^2;
    SampleVariation = sum(SquaredDeviations)/(SampleSize - 1);
    CoefficientOfVariation = sqrt(SampleVariation)/SampleMean;
    
    fun = @(x)((sqrt(gamma(1+2/x) - (gamma(1+1/x))^2))/gamma(1+1/x)) - CoefficientOfVariation;
    x0 = 10;
    k = fzero(fun,x0);
    a = SampleMean/gamma(1+1/k);
    % fzero function: https://de.mathworks.com/help/matlab/ref/fzero.html
end
    
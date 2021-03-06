function [covariance] = unscentedTransform(weights,sigmaPoints,state)
    initCovarianceWeight = weights(2);
    meanVector = unscentedTransformMean(weights,sigmaPoints);
    covariance = initCovarianceWeight*(objecttoVector(sigmaPoints(1))-meanVector)*(objecttoVector(sigmaPoints(1))-meanVector).';
    for j=2:length(sigmaPoints)
        covariance = covariance+weights(3)*(objecttoVector(sigmaPoints(j))-meanVector)*(objecttoVector(sigmaPoints(j))-meanVector).';
    end
    covariance = real(covariance);

end



function [ prediction, lower, upper, threshold ] = multiplicative_arima( measurement, seasonality )
    arima_model = regARIMA('D',1,'Seasonality', seasonality,'MALags',1,'SMALags',12,...
    'Intercept',0);
    measurement = measurement(:);
    no_data = length(measurement);
    threshold = floor(no_data * (3/4));
    
    training = measurement(1:threshold);
    
    fit_model = estimate(arima_model,training);
    
    [prediction, predictionMSE] = forecast(fit_model, no_data - threshold, 'Y0', training);

    lower = prediction - 1.96*sqrt(predictionMSE);
    upper = prediction + 1.96*sqrt(predictionMSE);
end


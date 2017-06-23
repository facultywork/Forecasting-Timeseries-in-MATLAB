function [ prediction ] = ema( measurement , N )
    % EMA
    % formula
    no_values = length(measurement);    
    prediction = zeros(1, no_values);
    prediction(1) = measurement(1);
    alpha = 2/(N+1);
    for i=2:no_values
        prediction(i) = alpha * measurement(i) + (1 - alpha) * prediction(i-1);
    end
end
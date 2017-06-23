function [ prediction ] = ema( prediction , N , no_forecasts)
    % EMA
    % formula
    last_prediction = length(prediction);
    prediction = [ prediction zeros(1, no_forecasts)];
    last_new_prediction = length(prediction);
    alpha = 2/(N+1);
    for i=(last_prediction + 1):(last_new_prediction)
        prediction(i) = alpha * prediction(i-1) + (1 - alpha) * prediction(i-2);
    end
end
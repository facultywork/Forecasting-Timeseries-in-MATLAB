function [ prediction ] = ema_200( measurement )
    prediction = ema(measurement, 200);
end


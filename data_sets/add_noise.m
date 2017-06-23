function [ noisy_measurement ] = add_noise( measurement )
    no_values = size(measurement,2);
    noise = (rand(1,no_values) - 0.5) * 0.3;
    noisy_measurement = measurement + noise;
end


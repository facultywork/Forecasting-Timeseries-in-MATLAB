function [ time, measurement ] = sine_timeseries( start_time, end_time )
    time = start_time:0.01:end_time;
    measurement = sin(time*pi) + 1.1; % price must be always positive thus add 1.1
    measurement = add_noise(measurement) .* log(1+time);  % add price fluctuation
end


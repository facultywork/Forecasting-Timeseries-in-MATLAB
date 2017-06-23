function [ ] = forecast_timeseries( )
    addpath(genpath('./ema/'));
    addpath(genpath('./arima/'));
    addpath(genpath('./data_sets/'));
    addpath(genpath('./figures/'));
    
     sine_figure();
     temperature_figure();
     nasdaq_figure();
     nyse_figure();
end


function [ plots ] = draw_multiplicative_arima( time, measurement, seasonality )
    hold on;
    [arima_prediction, arima_lower, arima_upper, threshold] = multiplicative_arima(measurement, seasonality);
    forecasting_time = time(threshold+1:end);
    
    multiplicative_confidence_level_plot = plot(forecasting_time, arima_lower,'m.','LineWidth',2);
    plot(forecasting_time, arima_upper,'m.','LineWidth',2);
    multiplicative_arima_plot = plot(forecasting_time, arima_prediction,'c','LineWidth',2);

    hold off;
    
    plots = [multiplicative_confidence_level_plot, multiplicative_arima_plot];
end


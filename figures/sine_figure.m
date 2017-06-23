function [ ] = sine_figure(  )
    [time, measurement] = sine_timeseries(0,10);
    
    sinusoid_fig=(figure('Name','Sinusoid timeseries','NumberTitle','off'));
    set(sinusoid_fig,'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
    
    measurement_plot = plot(time, measurement, 'b');
    
    title('Sinusoid Prediction');
    ylabel('Measurements');
    xlabel('Time');
    
    plots = draw_forecasts( time, measurement );
    multiplicative_plots = draw_multiplicative_arima( time, measurement, 200);
    plots = [measurement_plot plots multiplicative_plots];
    
    legend(plots, 'Measurement','200EMA', '50EMA', '800EMA'...
        ,'95% Interval', 'ARIMA', 'Multiplicative 95%','Multiplicative ARIMA'); 
    
    
end


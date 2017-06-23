function [ ] = temperature_figure( )
    [time, measurement] = temperature_timeseries();
    
    sinusoid_fig=(figure('Name','Temperature timeseries','NumberTitle','off'));
    set(sinusoid_fig,'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
    
    measurement_plot = plot(time, measurement, 'b');
    
    title('Temperature Prediction');
    ylabel('Temp (\circC)');
    xlabel('Time elapsed from Jan 1, 2011 (days)');
    
    plots = draw_forecasts( time, measurement );
    multiplicative_plots = draw_multiplicative_arima( time, measurement, 24);
    plots = [measurement_plot plots multiplicative_plots];
    
    legend(plots, 'Measurement','200EMA', '50EMA', '800EMA'...
        ,'95% Interval', 'ARIMA', 'Multiplicative 95%','Multiplicative ARIMA'); 
    
end


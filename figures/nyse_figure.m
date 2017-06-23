function [ ] = nyse_figure( )
    [time, measurement] = nyse_timeseries();
    
    sinusoid_fig=(figure('Name','NYSE timeseries','NumberTitle','off'));
    set(sinusoid_fig,'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
    
    measurement_plot = plot(time, measurement, 'b');
    
    title('NYSE Prediction');
    ylabel('NYSE Index (\circC)');
    xlabel('Date');
    
    plots = draw_forecasts( time, measurement );
    multiplicative_plots = draw_multiplicative_arima( time, measurement, 365);
    plots = [measurement_plot plots multiplicative_plots];
    
    legend(plots, 'Measurement','200EMA', '50EMA', '800EMA'...
        ,'95% Interval', 'ARIMA', 'Multiplicative 95%','Multiplicative ARIMA');
    
    datetick('x','dd-mm-yyyy','keeplimits');
    
end


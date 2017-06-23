function [ plots ] = draw_forecasts( time, measurement )
    hold on;
    ema_200_prediction = ema_200(measurement);
    ema_200_plot = plot(time, ema_200_prediction, 'r--');
    hold off;
    
    hold on;
    ema_50_prediction = ema(measurement, 50);
    ema_50_plot = plot(time, ema_50_prediction, 'g--');
    hold off;
    
    hold on;
    ema_800_prediction = ema(measurement, 800);
    ema_800_plot = plot(time, ema_800_prediction, 'y--');
    hold off;
    
    hold on;
    [arima_prediction, arima_lower, arima_upper, threshold] = simple_arima(measurement);
    forecasting_time = time(threshold+1:end);
    
    confidence_level_plot = plot(forecasting_time, arima_lower,'r:','LineWidth',2);
    plot(forecasting_time, arima_upper,'r:','LineWidth',2);
    simple_arima_plot = plot(forecasting_time, arima_prediction,'k','LineWidth',2);    
%     rng(200);
    hold off;
    
    plots = [ema_200_plot, ema_50_plot, ema_800_plot, confidence_level_plot...
        , simple_arima_plot];
%     hold on;
%     [arima_prediction, arima_lower, arima_upper, threshold] = multiplicative_arima(measurement);
%     forecasting_time = time(threshold+1:end);
%     
%     confidence_level_plot = plot(forecasting_time, arima_lower,'m.','LineWidth',2);
%     plot(forecasting_time, arima_upper,'m.','LineWidth',2);
%     multiplicative_arima_plot = plot(forecasting_time, arima_prediction,'c','LineWidth',2);
% 
%     hold off;
   
%     legend([ema_200_plot, ema_50_plot, ema_800_plot, confidence_level_plot...
%         , simple_arima_plot, multiplicative_arima_plot]...
%         ,'200EMA', '50EMA', '800EMA','95% Interval', 'ARIMA', 'Multiplicative ARIMA'); 
    %, 'Kalman', 'Elman');

end


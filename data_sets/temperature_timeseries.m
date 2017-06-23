function [ days, tempC ] = temperature_timeseries( )
    load bostemp
    days = (1:31*24)/24;
%     plot(days, tempC), axis tight;
%     ylabel('Temp (\circC)');
%     xlabel('Time elapsed from Jan 1, 2011 (days)');
%     title('Logan Airport Dry Bulb Temperature (source: NOAA)');
end


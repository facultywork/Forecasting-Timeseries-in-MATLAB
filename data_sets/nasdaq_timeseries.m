function [ time, nasdaq_index ] = nasdaq_timeseries( )
    load Data_EquityIdx;
    time = datenum(DataTable.Properties.RowNames);
    nasdaq_index = DataTable.NASDAQ;
end

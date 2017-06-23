function [ time, nyse_index ] = nyse_timeseries( )
    load Data_EquityIdx;
    time = datenum(DataTable.Properties.RowNames);
    nyse_index = DataTable.NYSE;
end


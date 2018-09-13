A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

SELECT
   ROUND(AVG(g.lat), 4) as median_val
FROM
   (SELECT s.LAT_N AS lat, @rownum:=@rownum+1 as `row_number`, @total_rows:=@rownum #here the important thing to understand is that the total_rows
   #gives the entire total number of records or rows in the table 
    FROM Station s, (SELECT @rownum:=0) r
    ORDER BY s.LAT_N) AS g
WHERE
g.row_number IN (FLOOR((@total_rows+1)/2), FLOOR((@total_rows+2)/2)); #and whichever rows matches the ones in the calculation will be pulled
#out for their values and the average will be found









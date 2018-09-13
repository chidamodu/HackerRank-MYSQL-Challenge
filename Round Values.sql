Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of  2 decimal places.
The sum of all values in LONG_W rounded to a scale of  2 decimal places.
where lat is the sum of all values in LAT_N and lon is the sum of all values in LONG_W. Both results must be rounded to a scale of 2 decimal places.

SELECT ROUND(SUM(LAT_N), 2) AS lat, ROUND(SUM(LONG_W), 2) AS lon
FROM STATION;
Outcome: 42850.04 47381.48

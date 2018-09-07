Weather Observation Station 3

Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.

SELECT DISTINCT(CITY) AS city_name FROM STATION
WHERE MOD(ID, 2)=0; #Modulo operation. Returns the remainder of N divided by M.
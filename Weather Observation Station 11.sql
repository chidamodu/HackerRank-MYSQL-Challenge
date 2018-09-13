Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT(CITY) FROM STATION
WHERE CITY NOT RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';

Here ^ denotes the beginning of the string_value and it could mean differently depending on the context. If it is outside the [] like ^[]
with specific characters mentioned within the brackets, as given here, it means beginning of the value with, either or not the characters,
mentioned within the brackets. If it is mentioned inside the square brackets in a regular expression like: '[^abc]' then it mean exclude all
three characters within the brackets. The $ sign denotes the end of the string_value. 

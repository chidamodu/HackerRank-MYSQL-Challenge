Top Competitors

Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

SELECT h.hacker_id, h.name FROM
Hackers h
INNER JOIN Submissions s
ON s.hacker_id = h.hacker_id
INNER JOIN Challenges chl
ON chl.challenge_id=s.challenge_id
INNER JOIN Difficulty d
ON d.difficulty_level = chl.difficulty_level
WHERE d.score=s.score AND d.difficulty_level=chl.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id)>1
ORDER BY COUNT(s.hacker_id) DESC, h.hacker_id ASC


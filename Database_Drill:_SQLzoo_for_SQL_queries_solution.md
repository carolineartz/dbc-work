##Scores
![Database Drill Scores](http://goo.gl/10z9BM)

##Reflection
I do have prior experience with SQL but was stuck for quite a while on the final problem (#13) in the bonus JOIN section. 

First, I had trouble distributing the scores correctly across the teams for each record--but I realized I should be using SUM and not COUNT. 

Next, I could not figure out how to populate the records (rows/games) with a 0-0 tie. With a normal join, only when the joined field appears in both tables will the result table be populated with data. However, *there are different types of joins* and we needed the one where all games are populated, recardless of whetehr they appear in the table describing goals (because obviously games that result in a draw woudln't show up in the goals table). Remembering this, I went for a left join--including all items from my "left" table (games) and those that match on the joined feild from the "right" table (goal).

```sql
SELECT m.mdate,
       m.team1,
       SUM(CASE WHEN g.teamid=m.team1 THEN 1 ELSE 0 END) as score1,
       m.team2,
       SUM(CASE WHEN g.teamid=m.team2 THEN 1 ELSE 0 END) as score2
FROM game m LEFT JOIN goal g ON g.matchid = m.id
GROUP BY m.id
ORDER BY m.mdate, g.matchid, m.team1, m.team2
```

###Types of Joins[^1]
[^1]:http://www.w3schools.com/sql/sql_join.asp
**INNER JOIN**: Returns all rows when there is at least one match in BOTH tables<br />
**LEFT JOIN**: Return all rows from the left table, and the matched rows from the right table<br />
**RIGHT JOIN**: Return all rows from the right table, and the matched rows from the left table<br />
**FULL JOIN**: Return all rows when there is a match in ONE of the tables<br />
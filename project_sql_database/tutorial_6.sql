-- JOIN

-- 1. Show all goals scored by Germany.
SELECT matchid, player
  FROM goal 
 WHERE teamid = 'GER';

-- 2. Show id, stadium, team1, team2 for just game 1012.
SELECT id, stadium, team1, team2
  FROM game
 WHERE id = 1012;

-- 3. Show the player, teamid, stadium and mdate for every German goal.
SELECT goal.player, goal.teamid, game.stadium, game.mdate
  FROM game
  JOIN goal ON (game.id = goal.matchid)
 WHERE goal.teamid = 'GER';

-- 4. Show the team1, team2 and player for every goal scored by a player called Mario.
SELECT game.team1, game.team2, goal.player
  FROM game
  JOIN goal ON (game.id = goal.matchid)
 WHERE goal.player LIKE 'Mario%';

-- 5. Show player, teamid, coach, gtime for all goals scored in the first 10 minutes.
SELECT goal.player, goal.teamid, eteam.coach, goal.gtime
  FROM goal
  JOIN eteam ON goal.teamid = eteam.id
 WHERE goal.gtime <= 10;

-- 6. List the the dates of the matches and the name of the team in which Fernando Santos was the team1 coach.
SELECT game.mdate, eteam.teamname
  FROM game
  JOIN eteam ON game.team1 = eteam.id
 WHERE eteam.coach = 'Fernando Santos';

-- 7. List the player for every goal scored in a game where the stadium was National Stadium, Warsaw.
SELECT goal.player
  FROM goal
  JOIN game ON goal.matchid = game.id
 WHERE game.stadium = 'National Stadium, Warsaw';

-- 8. Show the name of all players who scored a goal against Germany in the Germany-Greece quarterfinal.
SELECT DISTINCT goal.player
  FROM game
  JOIN goal ON goal.matchid = game.id 
 WHERE goal.teamid <> 'GER'
   AND (game.team1 = 'GER' OR game.team2 = 'GER');

-- 9. Show teamname and the total number of goals scored.
SELECT eteam.teamname, COUNT(*)
  FROM eteam
  JOIN goal ON eteam.id = goal.teamid
 GROUP BY eteam.teamname;

-- 10. Show the stadium and the number of goals scored in each stadium. 


-- 11. 


-- 12. 


-- 13. 













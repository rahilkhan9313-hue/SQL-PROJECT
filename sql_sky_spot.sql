use fingertips;

select *from sky_1;
select *from sky_2;

#q1 Import both the .CSV files in Dbeaver under the database name Sky_Sports

elect *from sky_1;
select *from sky_2;

#q2 Write an sql query to show all the UNIQUE team names

select distinct(team) from sky_2;

#q3 Write an SQL query to show name of team which has rank 1 from group 7 
select team 
from sky_2
where `rank`=1 and `group`=7;

#q4 Write an sql query to show count of all teams 
select count(team) from sky_2;

#q5 Write an SQL query to show matches_played by each team
select team,matches_played from sky_2;

select *from sky_2;

#q6 Write an SQL query to show team, percent of wins with respect 
#to matches_played by each team and name the resulting column as wins_percent

select team, 100.0*(wins/matches_played) as wins_percent 
from sky_2;


#q7 Write an SQL query to show which team has maximum goals_scored and their count
SELECT team, goals_scored 
FROM sky_2
WHERE goals_scored = (SELECT MAX(goals_scored) FROM sky_2);

#q8  Write an SQL query to show percent of draws
# with respect to matches_played round of to 2 digits by each team
select team, round(100.0*(draws/matches_played), 2) 
from sky_2;

#q9 Write an SQL query to show which team has minimum goals_scored and their count
SELECT team, goals_scored 
FROM sky_2
WHERE goals_scored = (SELECT min(goals_scored) FROM sky_2);

#q10 Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses 
#and name the resulting column as losses_percent
select team, 100.0*(losses/matches_played) as losses_percent 
from sky_2 
order by losses_percent;

#q11 Write an SQL query to show the average goal_difference 

select avg(goal_difference) from sky_2;

#q12 Write an SQL query to show name of the team where points are 0 

select team from sky_2
where points = 0;

#q13 Write a SQL query to 
#show all data where expected_goal_scored is less than exp_goal_conceded

select *from sky_2
where expected_goal_scored < exp_goal_conceded;

#q14 Write an SQL query to show data
# where exp_goal_difference is in between -0.5 and 0.5

select *from sky_2
where exp_goal_difference between -0.5 and 0.5;

#q15 Write an SQL query to show all data in ascending order 
#by exp_goal_difference_per_90

select *from sky_2
order by exp_goal_difference_per_90 asc;

#q16 Write an SQL query to show team which has maximum number of players_used

select team,players_used 
from sky_1
where players_used = (SELECT max(players_used) FROM sky_1);

#q17 Write an SQL query to show each team name 
#and avg_age in ascending order by avg_age

select team,avg_age from sky_1
order by avg_age asc;

#q18 Write an sql query to show average possession of teams 

select avg(possession) from sky_1;

#q19 Write a SQL query to show team which has played atleast 5 games

select team from sky_1
where games >= 5;

#q20 Write an SQL query to show all data for which minutes is greater than 600

select *from sky_1
where minutes > 600;

#q21 Write an SQL query to show team, goals, assists in ascending order by goals

select team,goals,assists from sky_1
order by goals asc;

#q22 Write an SQL query to show team, pens_made, pens_att 
#in descending order by pens_made

select team,pens_made,pens_att from sky_1
order by pens_made desc;

#q23 Write an SQL query to show team, cards_yellow, 
#cards_red where cards_red is equal to 1 in ascending order by cards_yellow

select team,cards_yellow,cards_red from sky_1
where cards_red = 1
order by cards_yellow asc;

#q24 Write an SQL query to show team, goals_per90, assists_per90,
# goals_assists_per90 in descending order by goals_assists_per90

select team,goals_per90,assists_per90,goals_assists_per90 from sky_1
order by goals_assists_per90 desc;

#q25 Write an SQL query to show team, goals_pens_per90, 
#goals_assists_pens_per90 in ascending order by goals_assists_pens_per90

select team,goals_pens_per90,goals_assists_pens_per90 from sky_1
order by goals_assists_pens_per90 asc;

#q26 Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct 
#where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 

select team,shots,shots_on_target,shots_on_target_pct from sky_1
where shots_on_target_pct < 30 
order by shots_on_target_pct asc;

#q27 Write an SQL query to show team, shots_per90, 
#shots_on_target_per90 for team Belgium

select team,shots_per90,shots_on_target_per90 from sky_1
where team = 'belgium';

#28  Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, 
#average_shot_distance in descending order by average_shot_distance

select team,goals_per_shot,goals_per_shot_on_target,average_shot_distance from sky_1
order by average_shot_distance desc;

#q29 Write an SQL query to show team, errors, touches for which errors is 0 
#and touches is less than 1500

select team,errors,touches from sky_1 
where errors = 0  and touches < 1500;

#q30 Write an SQL query to show team, fouls which has maximum number of fouls

select team,fouls from sky_1
where fouls = (select max(fouls) from sky_1);

#q31 Write an SQL query to show team, offsides which has 
#offsides less than 10 or greater than 20

select team,offsides from sky_1
where offsides < 10 or offsides > 20;

#q32 Write an SQL query to show team, aerials_won, aerials_lost, 
#aerials_won_pct in descending order by aerials_won_pct

select team,aerials_won,aerials_lost,aerials_won_pct from sky_1
order by aerials_won_pct desc;

#q33 Write an SQL query to show number of teams each group has!

select 'group',count(team) as num_of_team from sky_2
group by 'group';

#q34 Write a SQL query to show team names group 6 has

select team,'group' from sky_2
where 'group' = 6;

#q35 Write an SQL query to show Australia belongs to which group
 select team,'group' from sky_2
 where team = 'Australia';

#q36 Write an SQL query to show group, average wins by each group 

select "group",avg(wins) as avg_wins from sky_2
group by "group";

#q37 Write an SQL query to show group, 
#maximum expected_goal_scored by each group in ascending 
#order by expected_goal_scored

select "group",max(expected_goal_scored) as max_scored from sky_2
group by "group"
order by max_scored asc;

#q38 Write an SQL query to show group, minimum exp_goal_conceded 
#by each group in descending order by exp_goal_conceded

select "group",min(exp_goal_conceded) as min_goals from sky_2
group by "group"
order by min_goals desc;

#q39 Write an SQL query to show group, average exp_goal_difference_per_90 
#for each group in ascending order by exp_goal_difference_per_90

select "group",avg(exp_goal_difference_per_90) as avg_90 from sky_2
group by "group"
order by avg_90 asc;

#q40 Write an SQL query to show which team has equal number of 
#goals_scored and goals_against

select team,goals_scored,goals_against from sky_2
where goals_scored = goals_against;

#q41 Write an SQL query to show which team has maximum players_used

select team from sky_1
where players_used = (select max(players_used) from sky_1);

#q42 Write an SQL query to show team, players_used, avg_age, games, minutes 
#where minutes lessthan 500 and greater than 200

select team,players_used,avg_age,games,minutes from sky_1
where minutes < 500 and minutes > 200;

#q43 Write an SQL query to show all data of group_stats in ascending order BY points

select *from sky_2
order by points asc;

#q44 Write an SQL query to show ALL UNIQUE team in ascending order by team

select distinct(team) from sky_2
order by team asc;

#q45  Write an SQL query to show average avg_age of 
#each group and arrange it in descending order by avg_age.

select gs.`group`, avg(td.avg_age) as avg_group_age
from sky_1 td inner join sky_2 gs 
on td.team=gs.team
group by gs.`group` 
order by avg_group_age desc;

#q46 Write an SQL query to show sum of fouls 
#for each group and arrange it in ascending order by fouls.

select gs.`group`, sum(td.fouls) as sum_fouls 
from sky_1 td inner join sky_2 gs 
on td.team=gs.team
group by gs.`group` 
order by sum_fouls asc;

#q47 Write an SQL query to show total number of games 
#for each group and arrange it in descending order by games.

select gs.`group`, sum(td.games) as sum_games 
from sky_1 td inner join sky_2 gs 
on td.team=gs.team
group by gs.`group` 
order by sum_games desc;

#q48 Write an SQL query to show total number of players_used
# for each group and arrange it in ascending order by players_used.

select gs.`group`, sum(td.players_used) as sum_players_used 
from sky_1 td inner join sky_2 gs
on td.team=gs.team
group by gs.`group` 
order by sum_players_used;

#q49 Write an SQL query to show total number of offsides 
#for each group and arrange it in ascending order by offsides.

select gs.`group`, sum(td.offsides) as sum_offsides 
from sky_1 td inner join sky_2 gs 
on td.team=gs.team
group by gs.`group` 
order by sum_offsides;

#q50 	Write an SQL query to show average passes_pct 
#for each group and arrange it in descending order by passes_pct

select gs.`group`, avg(td.passes_pct) as avg_passes_pct
from sky_1 td inner join sky_2 gs 
on td.team=gs.team
group by gs.`group` 
order by avg_passes_pct desc;

#q51 WRITE a query to show average goals_per90
# for each group and arrange it in ascending order by goals_per90.

select gs.`group`, avg(td.goals_per90) as avg_goals_per90
from sky_1 td inner join sky_2 gs 
on td.team=gs.team
group by gs.`group` 
order by avg_goals_per90;



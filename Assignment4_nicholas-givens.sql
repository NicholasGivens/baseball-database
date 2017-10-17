
USE gc200362728;

#drop the table if it exists
DROP TABLE IF EXISTS tbl_player;
#create the table for players
CREATE TABLE tbl_player(
	player_id 			VARCHAR(60) PRIMARY KEY, # NOT NULL
    player_number 		TINYINT(2)    	NOT NULL,
    hit_hand 			ENUM('L','R'),			 
	throw_hand 			ENUM('L','R'),
    position_id 		ENUM('LF','CF','RF','P','SS','C','FB','SB','TB') NOT NULL,
    birth_date          DATE NOT NULL,
    player_hometown		VARCHAR(60) DEFAULT''
 );
 #drop the table if it exists
DROP TABLE IF EXISTS tbl_team;
#create the table for teams
CREATE TABLE tbl_team(
	team_id				VARCHAR(60) PRIMARY KEY,       
	team_hometown 		VARCHAR(60) NOT NULL,
    team_roster			TINYINT(2) NOT NULL, 
    team_rank			TINYINT(2)
	
);
#drop the table if it exists
DROP TABLE IF EXISTS tbl_game;
#create the table for games
CREATE TABLE tbl_game(
	game_id           	TINYINT PRIMARY KEY, 
	home_team_id		VARCHAR(60) NOT NULL, 
	away_team_id 		VARCHAR(60) NOT NULL,
	outcome				ENUM('home','away'), 
	home_team_runs 		TINYINT(2), 
	away_team_runs		TINYINT(2)
);
#drop the table if it exists
DROP TABLE IF EXISTS tbl_stats;
#create the table for player stats
CREATE TABLE tbl_stats(
	homeruns     		SMALLINT(3),
    strikeouts   		SMALLINT(3)
);
#drop the table if it exists
DROP TABLE IF EXISTS tbl_coach;
#create the table for coach data
CREATE TABLE tbl_coach(
	coach_id     		CHAR(60) PRIMARY KEY,
    hometown   		    CHAR(60) NOT NULL
);
#drop the table if it exists
DROP TABLE IF EXISTS tbl_field;
#create the table for field
CREATE TABLE tbl_field(
	field_id     		CHAR(60) PRIMARY KEY,
    location   		    CHAR(60) NOT NULL
);
	
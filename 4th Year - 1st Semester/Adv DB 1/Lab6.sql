/* Golf DB 1 and DB 2*/
drop table results1;
drop table results2;
drop table players1;
drop table players2;
drop table team1;
drop table team2;
drop table tournament1;
drop table tournament2;

Create Table Team1(
Team_id integer primary key,
Team_name varchar(100)
);

Create Table Team2(
Team_id integer primary key,
Team_name varchar(100)
);

Create Table Players1(
p_id integer primary key,
p_name varchar(50),
p_sname varchar(50),
team_id integer,
constraint fk_team_1 foreign key (team_id) references team1
);

Create Table Players2(
p_id integer primary key,
p_name varchar(50),
p_sname varchar(50),
team_id integer,
constraint fk_team_2 foreign key (team_id) references team2
);

Create Table Tournament1(
T_id integer primary key,
t_description varchar(100),
t_date date,
Total_price float
);

Create Table Tournament2(
T_id integer primary key,
t_description varchar(100),
t_date date,
Total_price float
);

Create Table Results1(
t_id integer,
p_id integer,
rank integer,
price float,
CONSTRAINT  FK_player1 FOREIGN KEY (p_id) REFERENCES players1,
CONSTRAINT  FK_tournament1 FOREIGN KEY (t_id) REFERENCES tournament1,
CONSTRAINT PK_Results1 PRIMARY KEY (t_id,p_id)
);

Create Table Results2(
t_id integer,
p_id integer,
rank integer,
price float,
CONSTRAINT  FK_player2 FOREIGN KEY (p_id) REFERENCES players2,
CONSTRAINT  FK_tournament2 FOREIGN KEY (t_id) REFERENCES tournament2,
CONSTRAINT PK_Results2 PRIMARY KEY (t_id,p_id)
);



/* data */
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (1, 'USA');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (2, 'AUSTRALIA');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (3, 'UK');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (4, 'IRELAND');

INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (1, 'UK');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (2, 'IRELAND');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (3, 'USA');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (4, 'ITALY');



INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (1, 'Tiger', 'Woods', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (2, 'Mary', 'Smith', 2);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (3, 'Mark', 'Deegan', 2);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (4, 'James', 'Bryan', 3);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (5, 'John', 'McDonald', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (6, 'Mario', 'Baggio', 1);

INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (2, 'Tiger', 'Woods', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (1, 'John', 'McDonald', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (3, 'Jim', 'Burke', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (4, 'Paul', 'Bin', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (5, 'Peter', 'Flynn', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (6, 'Martha', 'Ross', 4);


INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (1, 'US open', 1700000,'01-jan-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (2, 'British Open', 7000000,'01-apr-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (3, 'Italian Open', 2000000,'11-mar-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (4, 'Irish Open', 300000,'21-jul-2014');

INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (1, 'Dutch open', 1700000,'22-nov-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (2, 'French Open', 7000000,'17-dec-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (3, 'Spanish Open', 2000000,'03-mar-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (4, 'Chiinese Open', 300000,'15-jul-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (5, 'Dubai Open', 600000,'10-aug-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPTION, TOTAL_PRICE,t_date) VALUES (6, 'US Master', 1000000,'10-jul-2014');


INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (1, 1, 1, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (1, 2, 2, 20000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (2, 2, 4, 1000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 2, 3, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 1, 2, 1100);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 6, 3, 6000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 2, 2, 9000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 1, 1, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 5, 2, 9500);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 5, 4, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (2, 5, 7, 100);

INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (1, 1, 1, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (1, 2, 3, 2000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (2, 2, 1, 6000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 2, 3, 17000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 1, 12, 1100);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 6, 10, 8000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 2, 2, 12000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 1, 3, 10000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 5, 1, 9000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 5, 5, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (2, 5, 3, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 5, 3, 8000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 2, 2, 16000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 1, 1, 20000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 1, 3, 2000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 5, 2, 9400);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 4, 1, 12000);


/*CREATE DIMENSION TABLES*/
drop table fact_results;
drop table DateDim;
drop table TournamentDim;
drop table TeamDim;
drop table PlayerDim;

create table PlayerDim(
    player_sk integer primary key,
    player_name varchar(50)
);

create table TeamDim(
    team_sk integer primary key,
    team_name varchar(100)
);

create table TournamentDim(
    tournament_sk integer primary key,
    tournament_desc varchar(100),
    total_price float 
);

create table DateDim(
    date_sk integer primary key,
    day integer,
    month integer,
    year integer,
    week integer,
    quarter integer,
    dayOfWeek integer
);

create table fact_results(
    player_sk integer,
    tournament_sk integer,
    team_sk integer,
    date_sk integer,
    rank integer,
    price float,
    CONSTRAINT fk_dimDate FOREIGN KEY(date_sk) REFERENCES DateDim,
    CONSTRAINT fk_dimTournament FOREIGN KEY(tournament_sk) REFERENCES TournamentDim,
    CONSTRAINT fk_dimPlayer FOREIGN KEY(player_sk) REFERENCES PlayerDim,
    CONSTRAINT fk_dimTeam FOREIGN KEY(team_sk) REFERENCES TeamDim,
    CONSTRAINT pk_factresults PRIMARY KEY (date_sk, tournament_sk, player_sk, team_sk)
);

drop table player_stage;
create table player_stage(
    p_sk integer,
    sourceDB integer,
    p_id integer,
    p_name varchar(100),
    p_sname varchar(100),
    t_id integer
);

drop table team_stage;
create table team_stage(
    t_sk integer,
    sourceDB integer,
    t_id integer,
    t_name varchar(100)
);

drop table tournament_stage;
create table tournament_stage(
    t_sk integer,
    sourceDB integer,
    t_id integer,
    t_desc varchar(100),
    t_date varchar(100),
    t_total_price integer
);

drop table date_stage;
create table date_stage(
	d_sk integer,
	d_day integer,
	d_month integer,
	d_year integer,
	d_week integer,
	d_quarter integer,
	d_dayOfWeek integer,
  d_fullDate date
);


/*CREATE STAGE AREA*/

/* load staging for TEAMS */

drop sequence t_stage_seq;
create sequence t_stage_seq
start with 1
increment by 1
nomaxvalue;

drop trigger t_stage_trigger;
create trigger t_stage_trigger
before insert on team_stage
for each row
begin
    select t_stage_seq.nextval into :new.t_sk from dual;
end;

INSERT INTO team_stage (sourcedb, t_id, t_name) 
SELECT 1, team_id, team_name FROM Team1;



insert into team_stage (sourcedb, t_id, t_name) 
select 2, team_id, team_name from Team2;



/* load staging for PLAYERS */
/* Staging area*/

drop sequence p_stage_seq;
create sequence p_stage_seq
start with 1
increment by 1
nomaxvalue;

drop trigger p_stage_trigger;
create trigger p_stage_trigger
before insert on player_stage
for each row
begin
    select p_stage_seq.nextval into :new.p_sk from dual;
end;


INSERT INTO player_stage (sourcedb, p_id, p_name, p_sname, t_id) 
SELECT 1, p_id, p_name, p_sname, team_id FROM players1;
    
INSERT INTO player_stage (sourcedb, p_id, p_name, p_sname, t_id) 
SELECT 2, p_id, p_name, p_sname, team_id FROM players2;
    
SELECT * FROM PlayerDim;

INSERT INTO PlayerDim (player_sk, player_name)
SELECT p_sk, p_name || ' ' || p_sname FROM player_stage;


/* load stage for TOURNAMENT */
/* Staging area*/


drop sequence tournament_stage_seq;
create sequence tournament_stage_seq
start with 1
increment by 1
nomaxvalue;

drop trigger tournament_stage_trigger;
create trigger tournament_stage_trigger
before insert on tournament_stage
for each row
begin
    select tournament_stage_seq.nextval into :new.t_sk from dual;
end;

INSERT INTO tournament_stage (sourcedb, t_id, t_desc, t_date, t_total_price) 
SELECT 1, t_id, t_description, t_date, total_price FROM tournament1;
    
INSERT INTO tournament_stage (sourcedb, t_id, t_desc, t_date, t_total_price) 
SELECT 2, t_id, t_description, t_date, total_price FROM tournament2;

INSERT INTO TournamentDim (tournament_sk, tournament_desc, total_price)
SELECT t_sk, t_desc, t_total_price FROM tournament_stage;

/* load stage for date */
/* Staging area*/

drop sequence date_stage_seq;
create sequence date_stage_seq
start with 1
increment by 1
nomaxvalue;

drop trigger date_stage_trigger;
create trigger date_stage_trigger
before insert on date_stage
for each row
begin
select date_stage_seq.nextval into :new.d_sk from dual;
end;

insert into date_stage(d_year, d_day, d_month,d_week,d_quarter,d_dayOfWeek, d_fullDate) select cast(to_char(t_date,'YYYY') as integer), cast(to_char(t_date,'DD') as integer), cast(to_char(t_date,'MM') as integer),
to_number(to_char(to_date(t_date,'DD/MM/YYYY'),'WW')),to_number(to_char(to_date(t_date,'DD/MM/YYYY'),'Q')),to_number(to_char(to_date(t_date,'DD/MM/YYYY'),'D')), t_date from tournament1;

insert into date_stage(d_year, d_day, d_month,d_week,d_quarter,d_dayOfWeek, d_fullDate) select cast(to_char(t_date,'YYYY') as integer), cast(to_char(t_date,'DD') as integer), cast(to_char(t_date,'MM') as integer),
to_number(to_char(to_date(t_date,'DD/MM/YYYY'),'WW')),to_number(to_char(to_date(t_date,'DD/MM/YYYY'),'Q')),to_number(to_char(to_date(t_date,'DD/MM/YYYY'),'D')), t_date from tournament2;

INSERT INTO DateDim (date_sk, day, month, year, week, quarter, dayofweek)
SELECT d_sk, d_day, d_month, d_year, d_week, d_quarter, d_dayOfWeek FROM date_stage;

/*Dimension fact_results*/
/* Staging area */
drop table facts_stage;
create table facts_stage(
	t_sk integer,
	t_id integer,
	p_sk integer,
	p_id integer,
	trn_sk integer,
	trn_id integer,
  d_sk integer,
	t_date date,
	rank integer,
	price float,
	sourceDB integer
);

insert into facts_stage(trn_id, p_id, t_id, rank, price, sourcedb) 
select r.t_id, r.p_id, p.team_id, r.rank, r.price, 1 from Results1 r, Players1 p
where r.p_id = p.p_id;

insert into facts_stage(trn_id, p_id, t_id, rank, price, sourcedb) 
select r.t_id, r.p_id, p.team_id, r.rank, r.price, 2 from Results2 r, Players2 p
where r.p_id = p.p_id;

/*Assign Surrogate Keys*/
/*Team SK*/
update facts_stage
set t_sk=
	(select team_stage.t_sk from
	team_stage where (team_stage.sourceDB=facts_stage.sourceDB and
	team_stage.t_id = facts_stage.t_id));
  
/*Player SK*/
update facts_stage
set p_sk=
	(select player_stage.p_sk from
	player_stage where (player_stage.sourceDB=facts_stage.sourceDB and
	player_stage.p_id = facts_stage.p_id));
	
/*Tournament SK*/
update facts_stage
set trn_sk=
	(select tournament_stage.t_sk from
	tournament_stage where (tournament_stage.sourceDB=facts_stage.sourceDB and
	tournament_stage.t_id = facts_stage.trn_id));

update facts_stage
set t_date =
	(select tournament_stage.t_date from
	tournament_stage where (tournament_stage.sourceDB=facts_stage.sourceDB and
	tournament_stage.t_id = facts_stage.trn_id));
  
update facts_stage
set d_sk =
	(select date_stage.d_sk from
	date_stage where (date_stage.d_day = cast(to_char(facts_stage.t_date,'DD') as integer) and
                    date_stage.d_month = cast(to_char(facts_stage.t_date,'MM') as integer) and
                    date_stage.d_year = cast(to_char(facts_stage.t_date,'YYYY') as integer))); 
  
SELECT * FROM team_stage;
SELECT * FROM tournament_stage;
 
/* Clean fact_stage*/ 
UPDATE facts_stage
SET t_sk = 1
WHERE t_sk = 7 AND sourceDB = 2;

UPDATE facts_stage
SET p_sk = 5
WHERE p_sk = 8 AND sourceDB = 2;

UPDATE facts_stage
SET price = price * 0.7
WHERE sourceDB = 2;

UPDATE facts_stage
SET price

/* PUSH TO DIMENSIONS*/
/*Team*/
INSERT INTO TeamDim (team_sk, team_name)
SELECT t_sk, t_name FROM team_stage WHERE sourcedb = 1;

INSERT INTO TeamDim (team_sk, team_name)
SELECT t_sk, t_name FROM team_stage 
WHERE NOT EXISTS (
  SELECT * FROM TeamDim WHERE team_stage.t_name = TeamDim.team_name
);

/*Player*/
INSERT INTO PlayerDim (player_sk, player_name)
SELECT p_sk, p_name || ' ' || p_sname FROM player_stage WHERE sourcedb = 1;
    
INSERT INTO PlayerDim (player_sk, player_name)
SELECT p_sk, p_name || ' ' || p_sname FROM player_stage 
WHERE NOT EXISTS (
  SELECT * FROM PlayerDim WHERE player_stage.p_name || ' ' || player_stage.p_sname = PlayerDim.player_name
);

/* Tournament*/
SELECT * FROM tournamentDim;
describe TournamentDim;

INSERT INTO tournamentDim (tournament_sk, tournament_desc, total_price)
SELECT t_sk, t_desc, t_total_price FROM tournament_stage WHERE sourcedb = 1;

INSERT INTO tournamentDim (tournament_sk, tournament_desc, total_price)
SELECT t_sk, t_desc, t_total_price FROM tournament_stage
WHERE NOT EXISTS (
  SELECT * FROM tournamentDim WHERE tournament_stage.t_desc = tournamentDim.tournament_desc
);

/*Date*/
INSERT INTO dateDim (date_sk, day, month, year, week, quarter, dayofweek)
SELECT d_sk, d_day, d_month, d_year, d_week, d_quarter, d_dayofweek FROM date_stage;

/* push fact results*/
INSERT INTO FACT_RESULTS (PLAYER_SK, TOURNAMENT_SK, TEAM_SK, DATE_SK, RANK, PRICE)
SELECT p_sk, trn_sk, t_sk, d_sk, rank, price FROM FACTS_STAGE;


commit;













    
    
    
    
    


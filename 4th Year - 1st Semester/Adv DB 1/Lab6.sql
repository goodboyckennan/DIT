/*CREATE DIMENSION TABLES*/

create table PlayerDim(
    player_sk integer primary key,
    player_name varchar(255)
);

create table TeamDim(
    team_sk integer primary key,
    team_name varchar(255)
);

create table TournamentDim(
    tournament_sk integer primary key,
    tournament_desc varchar(255),
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
    CONSTRAINT pk_factresults PRIMARY KEY (date_sk, tournament_sk, player_sk, team_s)
);

/*CREATE STAGE AREA*/

/* load dimension for teams */
create table team_stage(
    t_sk integer,
    sourceDB integer,
    t_id integer,
    t_name varchar(255)
);

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


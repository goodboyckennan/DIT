DROP TABLE MATCHES;
DROP TABLE TEAMS;
DROP TABLE TEAMS_LOG;


CREATE TABLE TEAMS(
  TeamID INTEGER,
  TeamName VARCHAR(255),
  TeamCountry VARCHAR(255),
  CONSTRAINT teams_pk PRIMARY KEY(TeamID)
);

--TEAMS INSERTS
INSERT INTO TEAMS VALUES(1, 'Arsenal', 'England');
INSERT INTO TEAMS VALUES(2, 'Marchester United', 'England');
INSERT INTO TEAMS VALUES(3, 'Chelsea', 'England');
INSERT INTO TEAMS VALUES(4, 'Manchester City', 'England');
INSERT INTO TEAMS VALUES(5, 'Barcelona', 'Spain');
INSERT INTO TEAMS VALUES(6, 'Real Madrid', 'Spain');
INSERT INTO TEAMS VALUES(7, 'Getafe', 'Spain');
INSERT INTO TEAMS VALUES(8, 'Sevilla', 'Spain');

CREATE TABLE MATCHES(
  MatchID INTEGER,
  TeamA_ID INTEGER,
  TeamB_ID INTEGER,
  Goal_A INTEGER,
  Goal_B INTEGER,
  Competition VARCHAR(255),
  CONSTRAINT matches_pk PRIMARY KEY(MatchID),
  CONSTRAINT fk_teamA FOREIGN KEY(TeamA_ID) REFERENCES TEAMS(TeamID),
  CONSTRAINT fk_teamB FOREIGN KEY(TeamB_ID) REFERENCES TEAMS(TeamID)
);

--Create TEAMS_LOG Table
CREATE TABLE TEAMS_LOG(
  team VARCHAR(255),
  username VARCHAR(255),
  log_date DATE
);

-- A: Create Trigger to log when a row in TEAMS table is added
CREATE OR REPLACE TRIGGER TEAMS_LOG
AFTER INSERT ON TEAMS
FOR EACH ROW
BEGIN
  INSERT INTO TEAMS_LOG VALUES(:new.TeamName, TO_CHAR(USER), SYSDATE);
END TEAMS_LOG;  

--B: Add Check constraint on Competition column
ALTER TABLE MATCHES
ADD CONSTRAINT check_competition_value
  CHECK (Competition IN ('Champions League', 'Europa League', 'Premier League', 'La Liga'));

--Should fail since it violates check_competition_value constraint
INSERT INTO MATCHES VALUES(1000, 1, 3, 0, 5, 'SHOULD FAIL');


--C: Check goal is less than or equal to 0
ALTER TABLE MATCHES
ADD CONSTRAINT check_goal_a_value
  CHECK(Goal_A >= 0)
ADD CONSTRAINT check_goal_b_value
  CHECK(Goal_B >= 0);

--Should fail since it violates check_goal_b_value constraint
INSERT INTO MATCHES VALUES(1001, 1, 3, -1, 5, 'Champions League');


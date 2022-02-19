-- competition database
-- group -> teams -> matches

CREATE TABLE clubs(
    team_id SERIAL NOT NULL PRIMARY KEY,
    team_name VARCHAR(16) NOT NULL
);

CREATE TABLE tournaments (
    tournament_id SERIAL NOT NULL PRIMARY KEY,
    tournament_name VARCHAR(32) NOT NULL
);

CREATE TABLE groups(
    group_id SERIAL NOT NULL PRIMARY KEY,
    group_name VARCHAR(16) NOT NULL,
    tournament_id INT NOT NULL REFERENCES tournaments(tournament_id)
);

CREATE TABLE teams(
    team_id SERIAL NOT NULL PRIMARY KEY,
    group_id INT NOT NULL REFERENCES groups(group_id),
    club_id INT NOT NULL REFERENCES clubs(club_id)
);

CREATE TABLE matches(
    match_id SERIAL NOT NULL PRIMARY KEY,
    date DATE NULL,
    tournament_id INT NOT NULL REFERENCES tournaments(tournament_id)
);

CREATE TABLE players(
    player_id SERIAL NOT NULL,
    match_id INT NOT NULL REFERENCES matches(match_id),
    team_id INT NOT NULL REFERENCES teams(team_id),
    goals SMALLINT DEFAULT 0
);
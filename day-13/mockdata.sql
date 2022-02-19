INSERT INTO tournaments(tournament_name) VALUES ('Champions league');

INSERT INTO clubs (club_name)
VALUES ('Real Madrid'),
       ('Barcelona'),
       ('Liverpool'),
       ('PSJ');

INSERT INTO groups (label, tournament_id)
VALUES ('A', 1),
       ('B', 1);

INSERT INTO teams (group_id, club_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4);

INSERT INTO matches(date, tournament_id)
VALUES ('20-09-2021', 1),
       ('21-09-2021', 1),
       ('22-09-2021', 1);

INSERT INTO players (match_id, team_id)
VALUES (1, 1);

CREATE TABLE users(
    user_id SERIAL NOT NULL PRIMARY KEY,
    username VARCHAR(32) NOT NULL
);

CREATE TABLE movies (
    movie_id SERIAL NOT NULL PRIMARY KEY,
    movie_name VARCHAR(32) NOT NULL
    movie_date DATE
);

CREATE TABLE favorites (
    favorite_id SERIAL NOT NULL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    movie_id INT NOT NULL REFERENCES movies(movie_id)
);

-- WRITE COMMENT TO TABLE
COMMENT ON TABLE users IS 'Foydalanuchilar';
COMMENT ON TABLE movies IS 'Filmlar';
COMMENT ON TABLE favorites IS 'Sevimli filmlar';


INSERT INTO users (username)
VALUES ('Khasan'),
       ('Khusan');

INSERT INTO movies (movie_name)
VALUES ('Transformers'),
       ('Iron Man');

INSERT INTO favorites (user_id, movie_id)
VALUES (1, 2),
       (1, 1),
       (2, 2);

-- Joins and aggregate functions

SELECT
    f.favorite_id,
    u.username,
    m.movie_name
FROM favorites AS f
NATURAL JOIN users AS u
NATURAL JOIN movies AS m
GROUP BY f.user_id, u.username;

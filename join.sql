-- Active: 1750240490853@@127.0.0.1@5432@ph@public
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2
)

INSERT INTO "user"(username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post(title, user_id) VALUES
('Enjoing a sunny day with Akash!', 2),
('Batash just shared an amazing recipe!', 1),
('Exploring adventures wirh Sagor.', 4),
('Nodi wisdom always leaves me inspired.', 4);

SELECT * FROM "user";
SELECT * FROM post;

SELECT * FROM post as p
JOIN "user" u on p.user_id =u.id;

INSERT INTO post (id, title, user_id) VALUES
(5, 'this is a test post title', NULL);
-- INSERT INTO users (first_name, last_name)
-- VALUES ('Burhanudin', 'Rabbani'),
--     ('Heri', 'Pratama'),
--     ('Rian', 'Hidayat');
-- INSERT INTO user_friends (user_id, friend_id)
-- VALUES (1, 2),
--     (2, 3),
--     (1, 3);
SELECT u1.first_name,
    u2.first_name
FROM user_friends
    INNER JOIN users AS u1 ON user_id = u1.id
    INNER JOIN users AS u2 ON friend_id = u2.id
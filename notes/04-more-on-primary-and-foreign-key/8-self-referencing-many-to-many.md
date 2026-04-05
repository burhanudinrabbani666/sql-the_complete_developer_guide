# Self referencing Many-to-Many

```sql
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL
);
CREATE TABLE user_friends (
    user_id INT REFERENCES users ON DELETE CASCADE,
    friend_id INT REFERENCES users ON DELETE CASCADE,
    CHECK (user_id < friend_id),
    PRIMARY KEY (user_id, friend_id)
);
```

```sql
INSERT INTO users (first_name, last_name)
VALUES ('Burhanudin', 'Rabbani'),
    ('Heri', 'Pratama'),
    ('Rian', 'Hidayat');
INSERT INTO user_friends (user_id, friend_id)
VALUES (1, 2),
    (2, 3),
    (1, 3);
```

```sql
SELECT u1.first_name,
    u2.first_name
FROM user_friends
    INNER JOIN users AS u1 ON user_id = u1.id
    INNER JOIN users AS u2 ON friend_id = u2.id
```

Next: [](./)

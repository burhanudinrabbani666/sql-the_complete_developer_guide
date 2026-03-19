# How to store files

(Web) application server <====> Database server -> Social Network database > Users, posts, ...

How is the file Stored the database?

- Its not stored in the database at all!
- Instead, it's stored on a fileserver / hard drive and only the path to the file is stored in the datebase

```SQL
CREATE TABLE users (
    userName VARCHAR(225),
    imagePath VARCHAR(225), -- A column that should hold the image file paths
)

INSERT INTO users (userName, imagePath)
VALUES ('DBMax', 'upload/images/db_max.jpg') -- The path to the image (which is stored on some file server)

```

Next: [Create table syntax](./12-create-table-syntax.md)

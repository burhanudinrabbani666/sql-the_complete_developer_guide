# First look related data

| id  | first_name | last_name |
| --- | ---------- | --------- |
| 1   | George     | Lucas     |
| 2   | Jhon       | mcTiernan |
| 3   | Jan        | de Bont   |

| id  | title      | director_id |
| --- | ---------- | ----------- |
| 1   | Star war 1 | 1           |
| 2   | Speed      | 3           |
| 3   | Star war 2 | 1           |

```sql
SELECT d.first_name, d.last_name, m.title
FROM directors AS d
INNER JOIN movies AS m ON m.director_id = d.id
```

| d.first_name | d.last_name | m.title    |
| ------------ | ----------- | ---------- |
| George       | Lucas       | Star war 1 |
| George       | Lucas       | Star war 2 |
| Jan          | de Bont     | Speed      |

**Data is Connected across tables via keys**

-The Primary key of table A is used as a foreign key in table B
-Every table has a most one Primary key but every table may use multiple foreign key

Next: [Data normalization first steps](./3-data-normalization-first-steps.md)

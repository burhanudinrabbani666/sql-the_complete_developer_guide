# Key data types / value types

| Text           | Numeric | Date | Other |
| -------------- | ------- | ---- | ----- |
| CHAR(x)        |         |      |       |
| VARCHAR(X)     |         |      |       |
| TEXT, LONGTEXT |         |      |       |
| ENUM           |         |      |       |

## Description:

### Text

- CHAR(X): Store text up X characters; shorter text will be space padded
- VARCHAR(X):
  - Text with max.length of X bytes
  - One byte can be one character -> Depends on encoding

| Shorter text is <br> space-padded  | Shorter text is not <br> changed  |
| ---------------------------------- | --------------------------------- |
| CHAR(4)                            | VARCHAR(4)                        |
| Inserted : "hi" <br> Stored: " hi" | Inserted : "hi" <br> Stored: "hi" |

- TEXT: text of any size can be stored without specify a max size first
- ENUM: Only values from a prefidefind set of allowed values are accepted

Next: [Numeric date types](./9-numeric-date-types.md)

# Numeric value column

| Intger (Whole) Numbers <br> `INT, SMALLINT`                   | Exact decimal point numbers <br> `DECIMAL, NUMERIC`     | Approximate decimal point numbers <br> `FLOAT, REAL`         |
| ------------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------------ |
| 3, 10, -1831                                                  | 724.12, -8.195                                          | 724.12 -8.1956                                               |
| Numbers without any decimal places                            | Number with decimal places and exact expression         | Number with decimals places and approcimate preccision       |
| Inserted numbers with decimal places are rounded              | Inserted numbers are storesd axactly (no data loss)     | Stored approximately (data loss id possiable)                |
| Great for mathematical calculations                           | Great for data that requires exactnmess (e,g. monetary) | Great for numeric data where exactness is not required       |
| Great Performance                                             | Slow performance                                        | Great Performance                                            |
| Different types of integers occupy different amounts of space | Precision can be set when the table is created          | Different types of numbers occupy different amounts of sapce |

Next: [Enums table creation](./15-enums-table-creation.md)

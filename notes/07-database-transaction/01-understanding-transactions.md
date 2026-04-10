# understanding TRANSACTIONS

Transactions are a fundamental concept of all database systems. The essential point of a transaction is that it bundles multiple steps into a single, all-or-nothing operation. The intermediate states between the steps are not visible to other concurrent transactions, and if some failure occurs that prevents the transaction from completing, then none of the steps affect the database at all.

Docs: https://www.postgresql.org/docs/8.3/tutorial-transactions.html

First we should run transaction when session start

```sql
START TRANSACTION;
```

And Run `ROLLBACK` if some query failed and you dont wanna commit the data

```sql
ROLLBACK;
```

Next: [module project note](./02-module-project-note.md)

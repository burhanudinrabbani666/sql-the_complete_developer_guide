# dont use too many INDEXES

Problem of Too Many Indexes (Database):

Indexes can speed up queries (especially with WHERE). However, whenever data changes, the indexes must also be updated.

## Impact

If there are too many indexes → many structures need updating when data changes.
If data changes frequently → updates happen repeatedly across multiple indexes.

Conclusion:

Too many indexes + frequent updates = slower queries and poor performance.

**Key idea:**

Indexes improve read performance, but too many of them can hurt write/update performance.

Next: [INDEX types overview](./03-index-types-overview.md)

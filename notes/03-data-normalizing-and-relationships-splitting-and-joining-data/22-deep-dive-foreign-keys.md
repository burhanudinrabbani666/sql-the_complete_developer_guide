# Deep dive foreign keys

# ON DELETE & ON UPDATE

- RESTRICT: Prevent the intended action (e.g. deleting a reated row)
- NO ACTION (defualt): Prevent the intended action (e.g. deleting a related row) Check can be deferred e.g. as part of a trasaction.
- CASCADE: Perform the same action (e.g. deleting a realted row) on therow with the foreign key.
- SET NULL: set key value to NULL if the related row was deleted
- SET DEFAULT: set foreign key value to its DEFAULT value if the related row weas deleted
  Next: [Update remove foreign keys](./23-update-remove-foreign-keys.md)

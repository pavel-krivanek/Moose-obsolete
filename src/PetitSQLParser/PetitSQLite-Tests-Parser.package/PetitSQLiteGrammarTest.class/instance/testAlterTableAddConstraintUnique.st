tests
testAlterTableAddConstraintUnique

	self
		parse: 'ALTER TABLE UDF_TEST ADD  CONSTRAINT BIN$hFqLFqNzTUaOtkmeJTbToQ UNIQUE (UDF_TEST_PK) '
		rule: #alterTable
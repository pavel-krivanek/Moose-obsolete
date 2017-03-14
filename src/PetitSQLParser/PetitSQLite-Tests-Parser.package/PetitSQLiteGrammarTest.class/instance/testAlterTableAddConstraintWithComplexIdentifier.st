tests
testAlterTableAddConstraintWithComplexIdentifier

	self
		parse: 'ALTER TABLE UDF_TEST ADD  CONSTRAINT BIN$hFqLFqNzTUaOtkmeJTbToQ PRIMARY KEY (UDF_TEST_PK) USING INDEX'
		rule: #alterTable
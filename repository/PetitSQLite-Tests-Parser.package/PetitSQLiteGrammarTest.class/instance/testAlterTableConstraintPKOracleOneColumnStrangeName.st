tests
testAlterTableConstraintPKOracleOneColumnStrangeName

	self 
		parse: 'CONSTRAINT BIN$hFqLFqNzTUaOtkmeJTbToQ PRIMARY KEY (UDF_TEST_PK) USING INDEX'
		rule: #alterTableConstraintPKOracle.
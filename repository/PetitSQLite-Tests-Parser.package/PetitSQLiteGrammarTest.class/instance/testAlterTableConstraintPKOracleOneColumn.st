tests
testAlterTableConstraintPKOracleOneColumn

	self 
		parse: 'CONSTRAINT PK_M_INS_LT 
		PRIMARY KEY (SCHUTIT_KEY)'
		rule: #alterTableConstraintPKOracle.
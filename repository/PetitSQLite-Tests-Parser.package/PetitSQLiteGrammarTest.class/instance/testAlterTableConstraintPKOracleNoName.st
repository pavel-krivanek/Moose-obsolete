tests
testAlterTableConstraintPKOracleNoName

	self 
		parse: '
		PRIMARY KEY (IP_CTRL_ID_PARENT, IP_CTRL_ID_CHILD, RELATION_TYPE_CD)'
		rule: #alterTableConstraintPKOracle.
		
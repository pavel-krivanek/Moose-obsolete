tests
testAlterTableConstraintPKOracleSeveralColumns

	self 
		parse: 'CONSTRAINT PK_M_INS_LT 
		PRIMARY KEY (SCHUTIT_KEY)'
		rule: #alterTableConstraintPKOracle.

	self 
		parse: 'CONSTRAINT PK_IP_RELATION_CTRL_ID 
		PRIMARY KEY (IP_CTRL_ID_PARENT, IP_CTRL_ID_CHILD, RELATION_TYPE_CD)'
		rule: #alterTableConstraintPKOracle.
		
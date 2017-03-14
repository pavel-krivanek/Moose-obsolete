tests
testAlterTableConstraintFKOracleOneColumn
		
	self 
		parse: 'CONSTRAINT FK_S_IP_CL_ID
		FOREIGN KEY (IP_CL_ID) REFERENCES IP_CL (IP_CL_ID)
		ON DELETE CASCADE'
		rule: #alterTableConstraintFKOracle.
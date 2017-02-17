tests
testAlterTableAddConstraintMultiplePKs

	self 
		parse: 'ALTER TABLE M_INSN_LT ADD CONSTRAINT PK_IP_RELATION_CTRL_ID 
		PRIMARY KEY (IP_CTRL_ID_PARENT, IP_CTRL_ID_CHILD, RELATION_TYPE_CD)'
		rule: #alterTable.
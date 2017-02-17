tests
testAlterTableAddConstraintOnePK

	self 
		parse: 'ALTER TABLE M_INSN_LT ADD CONSTRAINT PK_M_INS_LT 
		PRIMARY KEY (SCHUTIT_KEY)'
		rule: #alterTable.
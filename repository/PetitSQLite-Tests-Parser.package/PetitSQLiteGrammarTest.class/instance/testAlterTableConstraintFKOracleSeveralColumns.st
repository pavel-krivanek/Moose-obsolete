tests
testAlterTableConstraintFKOracleSeveralColumns
		
	self 
		parse: 'CONSTRAINT FK_CRL_ID
		FOREIGN KEY (IP_CTL, CM_CTL_I, AR_CL_I, CM_AR_I_DIN_RE_I) REFERENCES CM_R_IP_RL (IP_RL_ID, C_CT_ID, A_CL_ID, CM_R_IP_DN_R_ID)
		ON DELETE CASCADE'
		rule: #alterTableConstraintFKOracle.
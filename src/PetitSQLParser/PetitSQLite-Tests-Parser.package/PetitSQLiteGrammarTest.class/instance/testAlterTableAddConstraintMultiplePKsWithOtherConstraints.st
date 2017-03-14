tests
testAlterTableAddConstraintMultiplePKsWithOtherConstraints

	self 
		parse: 'ALTER TABLE APPABLAUF ADD  CONSTRAINT APPABLAUF_PK PRIMARY KEY (ABLAUFID, STEP) USING INDEX'
		rule: #alterTable.
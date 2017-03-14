tests
testCreateViewAsSelectSpecificFieldsandWhereCondition
	super testCreateViewAsSelectSpecificFieldsandWhereCondition.
	
	self assert: result name equals: 'VBUE'.
	self assert: result completeName equals: 'DB2.VBUE'.
	self assert: result ofTables size equals: 1.
	self assert: result ofTables first equals: 'DB2ST.TOB'.
	
	
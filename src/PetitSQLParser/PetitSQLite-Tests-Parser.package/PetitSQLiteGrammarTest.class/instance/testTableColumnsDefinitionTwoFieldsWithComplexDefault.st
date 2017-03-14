tests
testTableColumnsDefinitionTwoFieldsWithComplexDefault	
	
	self
		parse: 'Year              VARCHAR2(4)      DEFAULT ''0000'' NOT NULL,
    AD_Client_ID      NUMBER(10, 0)    NOT NULL'
		rule: #tableColumnsDefinition.
		
		
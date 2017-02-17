tests
testTableColumnsDefinitionThreeFieldsWithDefaultAsLast

	self 
		parse: 'C_Charge_ID              NUMBER(10, 0),
		Processing               CHAR(1),
    Posted                   CHAR(1)           DEFAULT ''N'' NOT NULL'
		rule: #tableColumnsDefinition.
		
		
tests
testTableColumnsDefinitionThreeFieldsWithDefaultInBetween

	self 
		parse: 'C_Charge_ID              NUMBER(10, 0),
		 Posted                   CHAR(1)           DEFAULT ''N'' NOT NULL,
		Processing               CHAR(1)'
		rule: #tableColumnsDefinition.
		
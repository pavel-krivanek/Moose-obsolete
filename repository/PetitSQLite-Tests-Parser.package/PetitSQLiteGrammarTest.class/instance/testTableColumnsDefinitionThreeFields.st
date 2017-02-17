tests
testTableColumnsDefinitionThreeFields

	self 
		parse: 'CO_K          VARCHAR2(100) NOT NULL,
		CH_D          TIMESTAMP,
	VER            NUMBER(10) DEFAULT 0 NOT NULL'
		rule: #tableColumnsDefinition.
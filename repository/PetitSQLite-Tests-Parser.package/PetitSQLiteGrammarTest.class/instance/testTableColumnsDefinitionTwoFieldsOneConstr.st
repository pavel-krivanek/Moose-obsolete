tests
testTableColumnsDefinitionTwoFieldsOneConstr

	self 
		parse: ' LeaseTerminationDate         DATE               NOT NULL,
    Processing                   CHAR(1),
    CONSTRAINT A_Asset_Key PRIMARY KEY (A_Asset_ID)'
		rule: #tableColumnsDefinition.
tests
testOrderingTermCollate
	
	self 
		parse: 'IsActive in (''Y'',''N'') collate collateID'
	 	rule: #orderingTerm.
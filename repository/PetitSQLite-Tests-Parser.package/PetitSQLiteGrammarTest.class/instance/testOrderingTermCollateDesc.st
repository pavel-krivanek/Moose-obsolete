tests
testOrderingTermCollateDesc
	
	self 
		parse: 'IsActive in (''Y'',''N'') collate collateID desc'
	 	rule: #orderingTerm.
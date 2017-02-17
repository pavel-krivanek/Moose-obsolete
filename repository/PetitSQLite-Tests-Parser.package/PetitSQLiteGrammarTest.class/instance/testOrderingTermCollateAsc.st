tests
testOrderingTermCollateAsc
	
	self 
		parse: 'IsActive in (''Y'',''N'') collate collateID asc'
	 	rule: #orderingTerm.

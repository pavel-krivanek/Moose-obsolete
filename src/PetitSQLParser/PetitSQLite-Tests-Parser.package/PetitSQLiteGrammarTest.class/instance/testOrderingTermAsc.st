tests
testOrderingTermAsc

	self 
		parse: 'IsActive in (''Y'',''N'') asc'
	 	rule: #orderingTerm.
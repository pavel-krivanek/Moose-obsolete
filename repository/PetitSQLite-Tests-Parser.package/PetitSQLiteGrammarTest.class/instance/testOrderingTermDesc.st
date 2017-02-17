tests
testOrderingTermDesc

	self 
		parse: 'IsActive in (''Y'',''N'') desc'
	 	rule: #orderingTerm.

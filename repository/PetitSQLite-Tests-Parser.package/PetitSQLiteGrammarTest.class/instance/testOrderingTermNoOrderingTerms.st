tests
testOrderingTermNoOrderingTerms
	
	self 
		parse: 'IsActive in (''Y'',''N'')'
	 	rule: #orderingTerm.

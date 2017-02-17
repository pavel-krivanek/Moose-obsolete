tests
testQueryPlan
	self 
		parse: ' QUERY PLAN ' "result should be 'EXPLAIN' "
		rule: #queryPlan.

	self 
		parse: 'Query plan ' "result should be 'Explain' "
		rule: #queryPlan.
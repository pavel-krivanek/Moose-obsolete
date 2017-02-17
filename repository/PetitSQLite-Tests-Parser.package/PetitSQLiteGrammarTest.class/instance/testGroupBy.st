tests
testGroupBy
	self 
		parse: ' Group by ' "result should be 'Group by' "
		rule: #groupBy.

	self 
		parse: 'GROUP BY ' "result should be 'GROUP BY' "
		rule: #groupBy.
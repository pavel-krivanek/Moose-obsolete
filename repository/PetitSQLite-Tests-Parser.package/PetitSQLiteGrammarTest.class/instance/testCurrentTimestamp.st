tests
testCurrentTimestamp
	self 
		parse:' current_TIMESTAMP ' 
	 	rule: #currentTimestamp.
	self 
		parse:' CURRENT_TIMESTAMP ' 
	 	rule: #currentTimestamp
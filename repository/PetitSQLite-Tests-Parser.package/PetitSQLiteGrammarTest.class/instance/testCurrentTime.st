tests
testCurrentTime
	self 
		parse:' current_TIME ' 
	 	rule: #currentTime.
	self 
		parse:' CURRENT_TIME '
		rule: #currentTime.
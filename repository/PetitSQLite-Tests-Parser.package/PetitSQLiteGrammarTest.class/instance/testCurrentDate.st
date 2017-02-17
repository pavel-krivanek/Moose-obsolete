tests
testCurrentDate
	self 
		parse:' current_DATE ' 
	 	rule: #currentDate.
	self 
		parse:' CURRENT_DATE ' 
	 	rule: #currentDate.
tests
testTemp
	self 
		parse: ' TEMP' "result should be 'TEMP' "
		rule: #temp.

	self 
		parse: 'Temp ' "result should be 'Temp' "
		rule: #temp.

tests
testTemporary
	self 
		parse: 'TEMPORARY ' "result should be 'TEMPORARY' "
		rule: #temporary.
	
	self 
		parse: ' Temporary' "result should be 'Temporary' "
		rule: #temporary.

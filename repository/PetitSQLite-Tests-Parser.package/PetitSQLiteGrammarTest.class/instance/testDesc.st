tests
testDesc
	self 
		parse: 'DESC' "result should be 'DESC' "
		rule: #desc.

	self 
		parse: 'desc ' "result should be 'desc' "
		rule: #desc.
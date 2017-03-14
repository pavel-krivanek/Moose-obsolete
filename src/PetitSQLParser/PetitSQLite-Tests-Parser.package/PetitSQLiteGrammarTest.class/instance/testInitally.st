tests
testInitally
	self 
		parse: ' INITIALLY ' "result should be 'INITIALLY' "
		rule: #initially.

	self 
		parse: ' Initially ' "result should be 'Initally' "
		rule: #initially.
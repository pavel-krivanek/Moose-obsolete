tests
testFrom
	self 
		parse: ' From ' "result should be 'From' "
		rule: #from.

	self 
		parse: 'FROM ' "result should be 'FROM' "
		rule: #from.
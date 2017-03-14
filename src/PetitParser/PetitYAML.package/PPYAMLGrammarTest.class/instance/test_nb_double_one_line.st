spec
test_nb_double_one_line
	self parse: 'hi there' rule: #nb_double_one_line.
	
	self assert: result = 'hi there'.
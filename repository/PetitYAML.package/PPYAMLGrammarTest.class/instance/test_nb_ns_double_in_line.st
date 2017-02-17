spec
test_nb_ns_double_in_line
	self parse: 'hi there' rule: #nb_ns_double_in_line.
	self assert: result = 'hi there'.
	
	self parse: ' hi there' rule: #nb_ns_double_in_line.
	self assert: result = ' hi there'.
	
	self fail: ' hi there ' rule: #nb_ns_double_in_line.

spec
test_nb_double_qouted
	self parse: '"hi there"' rule: #c_double_quoted.
	self assert: result = 'hi there'.

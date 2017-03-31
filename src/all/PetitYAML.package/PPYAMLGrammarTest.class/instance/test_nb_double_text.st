spec
test_nb_double_text
	self parse: 'hi there' rule: #nb_double_text.
	self assert: result = 'hi there'.
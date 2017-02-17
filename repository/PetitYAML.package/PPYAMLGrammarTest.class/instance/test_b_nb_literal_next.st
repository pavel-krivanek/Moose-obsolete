spec
test_b_nb_literal_next
	context YAMLContext: #'block-in'.
	context YAMLN: 3.
	
	self parse: '

  abc' rule: #b_nb_literal_next.
	self assert: result = (String cr, String cr, 'abc').
	
	self parse: '

   abc' rule: #b_nb_literal_next.
	self assert: result = (String cr, String cr, ' abc').
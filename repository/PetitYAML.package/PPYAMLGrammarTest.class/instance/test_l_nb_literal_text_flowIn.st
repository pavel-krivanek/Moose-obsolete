spec
test_l_nb_literal_text_flowIn
	context YAMLN: 3.
	context YAMLContext: #'flow-in'.
	
	self parse: '  abc' rule: #l_nb_literal_text.
	self assert: result = 'abc'.
	
	self parse: '  
   ' rule: #l_nb_literal_text.
	self assert: result = (String cr, ' ').
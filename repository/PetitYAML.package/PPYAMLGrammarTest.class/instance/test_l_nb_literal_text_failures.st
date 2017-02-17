spec
test_l_nb_literal_text_failures
	context YAMLN: 3.
	context YAMLContext: #'block-in'.
	
	self fail: '  
   
  abc' rule: #l_nb_literal_text.

	self fail: '  
 abc' rule: #l_nb_literal_text.
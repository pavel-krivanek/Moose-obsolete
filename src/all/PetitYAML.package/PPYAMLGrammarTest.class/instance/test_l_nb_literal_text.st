spec
test_l_nb_literal_text
	context YAMLN: 3.
	context YAMLContext: #'block-in'.
	
	self parse: '  abc' rule: #l_nb_literal_text.
	self assert: result = 'abc'.
	
	self parse: '   abc' rule: #l_nb_literal_text.
	self assert: result = ' abc'.
	
	self parse: '  
  abc' rule: #l_nb_literal_text.
	self assert: result = (String cr, 'abc').

	self parse: '  
   abc' rule: #l_nb_literal_text.
	self assert: result = (String cr, ' abc').

	self parse: '  
   ' rule: #l_nb_literal_text.
	self assert: result = '
 '.

	self parse: ' 
  
  literal' rule: #l_nb_literal_text.
	self assert: result = (String cr, String cr, 'literal').
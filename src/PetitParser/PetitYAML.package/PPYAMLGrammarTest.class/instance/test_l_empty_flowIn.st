spec
test_l_empty_flowIn
	context YAMLContext: #'flow-in'.
	context YAMLN: 3.
	self parse: '   
' rule: #l_empty.
	self assert: result = String cr.


	self parse: '    
' rule: #l_empty.
	self assert: result = String cr.

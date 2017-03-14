spec
test_l_empty_blockIn
	context YAMLContext: #'block-in'.
	context YAMLN: 3.
	self parse: '  
' rule: #l_empty.
	self assert: result = String cr.


	self parse: '
' rule: #l_empty.
	self assert: result = String cr.

	self fail: '    
' rule: #l_empty.
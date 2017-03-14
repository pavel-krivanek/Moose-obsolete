spec
test_b_chomped_last
	context YAMLChomp: #'strip'.
	self parse: '
' rule: #b_chomped_last.
	self assert: result = ''.
	
	context YAMLChomp: #'clip'.
	self parse: '
' rule: #b_chomped_last.
	self assert: result = String cr.
	
	context YAMLChomp: #'keep'.
	self parse: '
' rule: #b_chomped_last.
	self assert: result = String cr.
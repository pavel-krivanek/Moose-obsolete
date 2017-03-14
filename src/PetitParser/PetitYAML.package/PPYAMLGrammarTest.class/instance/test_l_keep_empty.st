spec
test_l_keep_empty
	self parse: '
' rule: #l_keep_empty.
	self assert: result = String cr.
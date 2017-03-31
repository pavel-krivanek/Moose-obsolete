spec
test_b_l_trimmed
	self parse: '

' rule: #b_l_trimmed.

	self assert: result = String cr.

	self parse: '


' rule: #b_l_trimmed.
	self assert: result = (String cr, String cr).
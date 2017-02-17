spec
test_b_l_folded
	self parse: '
' rule: #b_l_folded.

	self assert: result = String space.

	self parse: '

' rule: #b_l_folded.
	self assert: result = String cr.
	
	self parse: '


' rule: #b_l_folded.
	self assert: result = (String cr, String cr).
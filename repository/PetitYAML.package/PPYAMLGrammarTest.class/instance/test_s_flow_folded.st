spec
test_s_flow_folded
	self parse: '
' rule: #s_flow_folded.

	self assert: result = String space.
	
	self parse: '
  
' rule: #s_flow_folded.
	self assert: result = String cr.

	self fail: '' rule: #s_flow_folded.
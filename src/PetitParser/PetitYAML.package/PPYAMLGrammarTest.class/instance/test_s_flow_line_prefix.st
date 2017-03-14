spec
test_s_flow_line_prefix
	context YAMLN: 3.
	self parse: '  ' rule: #s_flow_line_prefix.
	self assert: result = ''.
	
	self parse: '   ' rule: #s_flow_line_prefix.
	self assert: result = ''.
	
	self parse: '    ' rule: #s_flow_line_prefix.
	self assert: result = ''.
	
	self fail: ' ' rule: #s_flow_line_prefix.
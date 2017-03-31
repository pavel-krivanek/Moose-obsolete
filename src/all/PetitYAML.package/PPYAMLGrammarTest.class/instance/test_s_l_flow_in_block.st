spec
test_s_l_flow_in_block
	context YAMLN: 3.

	self parse: '  "flow in block"' rule: #s_l_flow_in_block.
	self assert: result = 'flow in block'.
	
	self parse: '   hi there' rule: #s_l_flow_in_block.
	self assert: result = 'hi there'.
spec
test_s_block_line_prefix
	context YAMLN: 3.
	self parse: '  ' rule: #s_block_line_prefix.
	self assert: result = ''.
	
	self fail: '   ' rule: #s_block_line_prefix.
	
	self fail: ' ' rule: #s_block_line_prefix.
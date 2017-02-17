spec
test_s_l_block_in_block
	context YAMLContext: #'block-in'.

	self parse: '  >
 Block scalar
' rule: #s_l_block_in_block.
	self assert: result = ('Block scalar', String cr).
	
	context YAMLContext: #'block-in'.
	self parse: '  #block collection
  foo: bar 	
' rule: #s_l_block_in_block.
	self assert: (result at: 'foo') = 'bar'.

	context YAMLContext: #'block-in'.
	context YAMLN: -1.
	self parse: '
- entry' rule: #s_l_block_in_block.
	self assert: result first = 'entry'.


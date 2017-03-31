spec
test_c_l_block_sequence_entry
	context YAMLContext: #'block-in'.
	context YAMLM: 1.
	context YAMLN: 1.
	self parse: '- one' rule: #c_l_block_seq_entry.
	self assert: result = 'one'.

	context YAMLContext: #'block-in'.
	context YAMLM: 1.
	context YAMLN: 1.	
	self parse: '- two : three' rule: #c_l_block_seq_entry.
	self assert: (result at: 'two') = 'three'.

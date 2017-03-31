spec
test_s_l_block_indented
	context YAMLContext: #'block-in'.
	context YAMLM: 1.
	self parse: ' foo' rule: #s_l_block_indented.
	self assert: result = 'foo'.
	
	context YAMLContext: #'block-in'.
	context YAMLM: 1.
	self parse: 'foo' rule: #s_l_block_indented.
	self assert: result = 'foo'.
	
	context YAMLContext: #'block-in'.
	context YAMLM: 1.
	context YAMLN: -1.
	self parse: 'foo: bar' rule: #s_l_block_indented.
	self assert: (result at: 'foo') = 'bar'.
	
	context YAMLContext: #'block-in'.
	context YAMLM: 3.
	self parse: '  foo: bar' rule: #s_l_block_indented.
	self assert: (result at: 'foo') = 'bar'.
	
	context YAMLContext: #'block-in'.
	context YAMLM: 1.
	self parse: '  - foo
  - bar' rule: #s_l_block_indented.
	self assert: result first = 'foo'.
	self assert: result second = 'bar'.	
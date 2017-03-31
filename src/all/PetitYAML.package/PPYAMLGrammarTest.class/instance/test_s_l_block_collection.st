spec
test_s_l_block_collection
	context YAMLContext: #'block-in'.
	
	self parse: '  - foo
  - bar' rule: #s_l_block_collection.
	self assert: result size = 2.
	
	context YAMLContext: #'block-in'.
	context YAMLN: -1.
	
	self parse: '- foo
- bar' rule: #s_l_block_collection.
	self assert: result size = 2.
	
	self parse: 'sequence:
- entry
- 
 - nested
mapping:
 foo: bar' rule: #s_l_block_collection.
	self assert: result size = 2.
	self assert: (result at: 'sequence') size = 2.
	self assert: (result at: 'sequence') first = 'entry'.
	self assert: (result at: 'sequence') second first = 'nested'.
	
	self assert: (result at: 'mapping') size = 1.
	self assert: ((result at: 'mapping') at: 'foo') = 'bar'.

as yet unclassified
test_s_l_block_indented_sequence
	context YAMLContext: #'block-in'.
	context YAMLM: 3.
	context YAMLN: 1.

	"This should be handled by compact sequence"
	self parse: '   - foo
   - bar' rule: #s_l_block_indented.

	self assert: result first = 'foo'.
	self assert: result second = 'bar'.	
	
	context YAMLM: 2.
	context YAMLN: 3.

	"This should be handled by compact sequence"
	self parse: '     - foo
     - bar' rule: #s_l_block_indented.

	self assert: result size = 2.
	self assert: result first = 'foo'.
	self assert: result second = 'bar'.	
	

	context YAMLM: 1.
	context YAMLN: -1.

	self parse: '- - foo
  - bar' rule: #s_l_block_indented.

	self assert: result size = 1.
	self assert: result first size = 2.
	
	context YAMLM: 2.
	context YAMLN: -1.

	self parse: ' -  - foo
    - bar' rule: #s_l_block_indented.

	self assert: result size = 1.
	self assert: result first size = 2.
	
	
	self fail: '-  - foo
  - bar' rule: #s_l_block_indented.
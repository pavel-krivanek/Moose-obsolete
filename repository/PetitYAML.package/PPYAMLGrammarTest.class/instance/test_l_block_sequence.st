spec
test_l_block_sequence
	context YAMLContext: #'block-in'.
	self parse: '  - foo
  - bar
  - baz' rule: #l_block_sequence.

	self assert: result size = 3.
	self assert: result first = 'foo'.
	self assert: result second = 'bar'.
	self assert: result third = 'baz'.

	self fail: '  - foo
 - bar' rule: #l_block_sequence.

	self parse: '  - foo
   - bar' rule: #l_block_sequence.
	self assert: result first = 'foo - bar'.
	
	context YAMLN: -1.
	context YAMLContext: #'block-in'.
	self parse: '- sun: yellow
- ? earth: blue
  : moon: white' rule: #l_block_sequence.

	self assert: result size = 2.
	self assert: (result first at: 'sun') = 'yellow'.
	self assert: (result second size = 1).
	self assert: (result second keys anyOne at:'earth') = 'blue'.
	self assert: (result second values anyOne at: 'moon') = 'white'.


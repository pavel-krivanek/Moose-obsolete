spec
test_l_block_mapping
	context YAMLN: -1.
	context YAMLContext: #'block-in'.
	self parse: 'block mapping:
 key: value
' rule: #l_block_mapping.

	self assert: result size = 1.
	self assert: ((result at: 'block mapping') at: 'key') = 'value'.
	
	context YAMLN: -1.
	context YAMLContext: #'block-in'.
	self parse: '? explicit key # Empty value
? |
  block key
: - one # Explicit compact
  - two # block value
' rule: #l_block_mapping.

	self assert: result size = 2.
	self assert: (result at: 'explicit key') = nil.
	self assert: (result at: ('block key', String cr)) size = 2.
	self assert: (result at: ('block key', String cr)) second = 'two'.
	
	context YAMLN: -1.
	context YAMLContext: #'block-in'.
	self parse: 'plain key: in-line value
: # Both empty
"quoted key":
- entry' rule: #l_block_mapping.

	self assert: result size = 3.
	self assert: (result at: nil) = nil.
	self assert: (result at: 'plain key') = 'in-line value'.
	self assert: (result at: 'quoted key') first = 'entry'.
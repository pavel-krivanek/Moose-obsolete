spec
test_c_l_block_map_explicit_entry
	context YAMLN: 1.
	context YAMLM: 1.
	context YAMLContext: #'block-in'.

	self parse: '? explicit key # Empty value
' rule: #c_l_block_map_explicit_entry.
	self assert: result key = 'explicit key'.
	self assert: result value = nil.
	

	self parse: '? |
  block key
: - one # Explicit compact
  - two # block value
' rule: #c_l_block_map_explicit_entry.
	self assert: result key = ('block key', String cr).
	self assert: result value size = 2.
	self assert: result value first = 'one'.
	self assert: result value second = 'two'.
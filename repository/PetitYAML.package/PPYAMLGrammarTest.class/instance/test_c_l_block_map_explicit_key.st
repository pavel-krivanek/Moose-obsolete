as yet unclassified
test_c_l_block_map_explicit_key
	context YAMLN: 1.
	context YAMLM: 1.
	context YAMLContext: #'block-in'.

	self parse: '? explicit key # Empty value
' rule: #c_l_block_map_explicit_key.
	self assert: result = 'explicit key'.
	
	self parse: '? |
  block key
' rule: #c_l_block_map_explicit_key.
	self assert: result = ('block key', String cr).
as yet unclassified
test_c_l_block_map_explicit_value
	context YAMLN: 1.
	context YAMLM: 1.
	context YAMLContext: #'block-in'.

	self parse: ': - one # Explicit compact
  - two # block value
' rule: #l_block_map_explicit_value.
	self assert: result size = 2.
	self assert: result first = 'one'.
	self assert: result second = 'two'.

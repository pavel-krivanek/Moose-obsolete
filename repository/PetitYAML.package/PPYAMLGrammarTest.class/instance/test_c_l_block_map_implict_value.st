spec
test_c_l_block_map_implict_value
	context YAMLContext: #'block-in'.
	self parse: ': in-line value' rule: #c_l_block_map_implicit_value.
	self assert: result  = 'in-line value'.


	context YAMLContext: #'block-in'.
	self parse: ':
- entry' rule: #c_l_block_map_implicit_value.
	self assert: result size = 1.
	self assert: result first = 'entry'.

	context YAMLContext: #'block-in'.
	self parse: ':
' rule: #c_l_block_map_implicit_value.
	self assert: result = nil.

spec
test_ns_l_block_map_implicit_entry
	self parse: 'foo: bar' rule: #ns_l_block_map_implicit_entry.
	self assert: result key = 'foo'.
	self assert: result value = 'bar'.
	
	self parse: ': bar' rule: #ns_l_block_map_implicit_entry.
	self assert: result key = nil.
	self assert: result value = 'bar'.
	
	self parse: ': #both empty' rule: #ns_l_block_map_implicit_entry.
	self assert: result key = nil.
	self assert: result value = nil.
	
	self parse: 'foo: #value empty' rule: #ns_l_block_map_implicit_entry.
	self assert: result key = 'foo'.
	self assert: result value = nil.
	
	self parse: 'plain key: in-line value' rule: #ns_l_block_map_implicit_entry.
	self assert: result key = 'plain key'.
	self assert: result value = 'in-line value'.

	self parse: '"quoted key":
- entry' rule: #ns_l_block_map_implicit_entry.
	self assert: result key = 'quoted key'.
	self assert: result value size = 1.
	self assert: result value first = 'entry'.


	self parse: ': #Both empty' rule: #ns_l_block_map_implicit_entry.
	self assert: result key = nil.
	self assert: result value = nil.
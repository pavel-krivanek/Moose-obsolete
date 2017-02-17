spec
test_ns_l_compact_mapping
	self parse: 'one: two # Compact mapping' rule: #ns_l_compact_mapping.
	self assert: result size = 1.
	self assert: (result at: 'one') = 'two'.
	
	
	self parse: 'one: two # Compact mapping
three: four' rule: #ns_l_compact_mapping.
	self assert: result size = 2.
	self assert: (result at: 'one') = 'two'.
	self assert: (result at: 'three') = 'four'.	
	
	context YAMLN: 3.
	self parse: 'one: two # Compact mapping
  three: four' rule: #ns_l_compact_mapping.
	self assert: result size = 2.
	self assert: (result at: 'one') = 'two'.
	self assert: (result at: 'three') = 'four'.	
	
	context YAMLN: 3.
	self fail: 'one: two # Compact mapping
three: four' rule: #ns_l_compact_mapping.

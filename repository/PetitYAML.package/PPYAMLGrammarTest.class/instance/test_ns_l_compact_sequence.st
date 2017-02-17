spec
test_ns_l_compact_sequence
	self parse: '- one
- two' rule: #ns_l_compact_sequence.
	self assert: result size = 2.
	self assert: result first = 'one'.
	self assert: result second = 'two'.

	context YAMLN: 3.	
	self parse: '- one
  - two
  - three' rule: #ns_l_compact_sequence.
	self assert: result size = 3.
	self assert: result first = 'one'.
	self assert: result second = 'two'.
	self assert: result third = 'three'.

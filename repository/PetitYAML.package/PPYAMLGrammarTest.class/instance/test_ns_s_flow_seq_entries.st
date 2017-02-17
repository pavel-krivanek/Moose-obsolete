spec
test_ns_s_flow_seq_entries
	self parse: 'one, two' rule: #ns_s_flow_seq_entries.
	
	self assert: result size = 2.
	self assert: result first = 'one'.
	self assert: result second = 'two'.
	

	self parse: 'one, two, ' rule: #ns_s_flow_seq_entries.
	
	self assert: result size = 2.
	self assert: result first = 'one'.
	self assert: result second = 'two'.
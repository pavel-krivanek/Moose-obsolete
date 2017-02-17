spec
test_ns_flow_seq_entry
	self parse: 'one' rule: #ns_flow_seq_entry.
	self assert: result = 'one'.
	
	self parse: '"one two"' rule: #ns_flow_seq_entry.
	self assert: result = 'one two'.
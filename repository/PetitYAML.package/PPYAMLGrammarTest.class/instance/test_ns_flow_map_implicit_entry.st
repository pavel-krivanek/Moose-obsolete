spec
test_ns_flow_map_implicit_entry
	self parse: 'implicit: entry' rule: #ns_flow_map_implicit_entry.
	self assert: result = ('implicit' -> 'entry').
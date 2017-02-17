spec
test_ns_flow_map_explicit_entry
	self parse: 'explicit: entry' rule: #ns_flow_map_explicit_entry.
	self assert: result = ('explicit' -> 'entry').
	
	self parse: '' rule: #ns_flow_map_explicit_entry.
	self assert: result = (nil -> nil).
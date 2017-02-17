spec
test_ns_flow_pair
	self parse: 'single: pair' rule: #ns_flow_pair.
	
	self assert: result size = 1.
	self assert: (result at: 'single') = 'pair'.
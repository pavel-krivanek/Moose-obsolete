spec
test_ns_flow_node
	self parse: 'simple text' rule: #ns_flow_node.
	self assert: result = 'simple text'.
	
	self parse: 'simple 
	text' rule: #ns_flow_node.
	self assert: result = 'simple text'.
	
	self parse: '"double
 quoted"' rule: #ns_flow_node.
	self assert: result = 'double quoted'.
	
	self parse: 'plain
 text' rule: #ns_flow_node.
	self assert: result = 'plain text'.
	
	self parse: '[ nested ]' rule: #ns_flow_node.
	self assert: result size = 1.
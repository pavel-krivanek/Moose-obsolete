spec
test_ns_plain_one_line
	self parse: 'implicit block key' rule: #ns_plain_one_line.
	self assert: result = 'implicit block key'.
	
	self parse: 'implicit:entry' rule: #ns_plain_one_line.
	self assert: result = 'implicit:entry'.
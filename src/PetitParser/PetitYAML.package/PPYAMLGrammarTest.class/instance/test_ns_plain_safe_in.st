spec
test_ns_plain_safe_in
	self parse: 'a' rule: #ns_plain_safe_in.
	self parse: '+' rule: #ns_plain_safe_in.
	
	self fail: '{' rule: #ns_plain_safe_in.
	self fail: '}' rule: #ns_plain_safe_in.
	self fail: '[' rule: #ns_plain_safe_in.
	self fail: ',' rule: #ns_plain_safe_in.
	self fail: ' ' rule: #ns_plain_safe_in.
	self fail: String cr rule: #ns_plain_safe_in.
	

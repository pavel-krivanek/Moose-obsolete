spec
test_ns_plain_safe_out
	self parse: 'a' rule: #ns_plain_safe_out.
	self parse: '+' rule: #ns_plain_safe_out.
	self parse: '{' rule: #ns_plain_safe_out.

	self fail: ' ' rule: #ns_plain_safe_out.
	self fail: String cr rule: #ns_plain_safe_out.
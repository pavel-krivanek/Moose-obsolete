spec
test_ns_plain_char
	self parse: 'a' rule: #ns_plain_char.

	self fail: '' rule: #ns_plain_char.
	self fail: ':' rule: #ns_plain_char.
spec
test_ns_plain
	context YAMLContext: #'flow-in'.
	self parse: 'a' rule: #ns_plain.
	self parse: 'foo' rule: #ns_plain.
	
	self fail: '-' rule: #ns_plain.
	
	"NOT Complete assertions..."
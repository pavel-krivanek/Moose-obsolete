spec
test_s_ns_plain_next_line
	self parse: '
 abc' rule: #s_ns_plain_next_line.
	self assert: result = ' abc'.
	
	self parse: '
 
  abc' rule: #s_ns_plain_next_line.
	self assert: result = '
abc'.
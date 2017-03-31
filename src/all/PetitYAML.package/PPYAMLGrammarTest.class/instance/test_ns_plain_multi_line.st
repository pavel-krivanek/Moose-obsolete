spec
test_ns_plain_multi_line
	self parse: '1st non-empty

 2nd non-empty 
 3rd non-empty' rule: #ns_plain_multi_line.

	self assert: result = '1st non-empty
2nd non-empty 3rd non-empty'
test-grammar
testBrackets
	self parse: '[ foo ]' rule: #brackets.
	self parse: '{ foo }' rule: #brackets.	
	self parse: '( foo )' rule: #brackets.
			
		
	self parse: '[ foo, bar,
		baz, bam ]'.
	

	self parse: '( foo () bar)' rule: #brackets.
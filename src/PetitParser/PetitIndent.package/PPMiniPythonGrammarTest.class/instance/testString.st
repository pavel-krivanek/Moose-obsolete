test-grammar
testString
	self parse: '"foo:"' rule: #string.
	self parse: '''foo: ''' rule: #string.	
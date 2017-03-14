running
testNonLetter
	
	
		self assert: (MalCamelcaseScanner scan: '123456') isEmpty.
	
		self
assert: (MalCamelcaseScanner scan: 'abc123abc')
	equals: #('abc' 'abc') asBag
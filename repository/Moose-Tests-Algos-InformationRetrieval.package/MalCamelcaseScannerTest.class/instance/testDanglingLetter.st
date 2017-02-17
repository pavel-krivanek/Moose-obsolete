running
testDanglingLetter
	
	
		self
	assert: (MalCamelcaseScanner scan: 'a')
	equals: #('a') asBag.
	
		self
	assert: (MalCamelcaseScanner scan: 'A')
	equals: #('A') asBag.
	
		self
	assert: (MalCamelcaseScanner scan: 'fooA')
	equals: #('foo' 'A') asBag
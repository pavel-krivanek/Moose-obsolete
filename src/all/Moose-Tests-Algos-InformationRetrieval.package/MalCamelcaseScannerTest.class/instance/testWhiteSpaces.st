running
testWhiteSpaces
	
	
		self
assert: (MalCamelcaseScanner scan: 'foo')
	equals: #('foo') asBag.
	
		self
assert: (MalCamelcaseScanner scan: 'fooBar')
equals: #('foo' 'bar') asBag.
	
		self
assert: (MalCamelcaseScanner scan: 'FooBar')
	equals: #('foo' 'bar') asBag
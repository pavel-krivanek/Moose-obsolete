running
testZeroWordAreWhitespace
	
	
		self
assert: (MalCamelcaseScanner scan: 'foo100Bar')
equals: #('foo' 'bar') asBag.
	
		self
assert: (MalCamelcaseScanner scan: 'foo10 0Bar')
	equals: #('foo') asBag.
	
		self
assert: (MalCamelcaseScanner scan: '0xFFFF foo')
	equals: #('foo') asBag.
	
		self
assert: (MalCamelcaseScanner scan: ' 0xFFFF foo')
equals: #('foo') asBag
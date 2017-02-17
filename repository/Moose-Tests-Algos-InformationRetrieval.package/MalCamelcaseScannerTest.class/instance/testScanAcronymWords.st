running
testScanAcronymWords
	
	
		self
assert: (MalCamelcaseScanner scan: 'TheNextBIGThing')
equals: #('the' 'next' 'BIG' 'thing') asBag.
	
		self
assert: (MalCamelcaseScanner scan: 'TheNextBIG')
equals: #('the' 'next' 'BIG') asBag.
	
		self
assert: (MalCamelcaseScanner scan: 'BIGThing')
	equals: #('BIG' 'thing') asBag.
	
		self
assert: (MalCamelcaseScanner scan: 'BIG')
		equals: #('BIG') asBag.
	
		self
assert: (MalCamelcaseScanner scan: 'TheNextBIG Thing')
equals: #('the' 'next' 'BIG' 'thing') asBag.
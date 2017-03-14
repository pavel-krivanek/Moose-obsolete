running
testScanWords
	
	
		
		self
assert: (MalTermScanner scan: 'foo') asArray 
equals: #('foo').
	
		self
assert: (MalTermScanner scan: 'foo bar') asArray 
equals: #( 'bar' 'foo')
		"self
assert: (MATermScanner scan: 'foo')  
equals: #('foo').
	
		self
assert: (MATermScanner scan: 'foo bar') 
equals: #('foo' 'bar')"
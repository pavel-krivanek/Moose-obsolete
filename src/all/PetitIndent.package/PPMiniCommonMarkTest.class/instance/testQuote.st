test-quotes
testQuote
	self parse: '>' rule: #quote.
	self assertResult: '>'.

	self parse: '> ' rule: #quote.
	self assertResult: '> '.
	
	self fail: ('>', String cr) rule: #quote.
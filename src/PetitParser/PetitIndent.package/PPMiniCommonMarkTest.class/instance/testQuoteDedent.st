test-quotes
testQuoteDedent
	parser := self parserInstanceFor: #quoteDedent.
	
	context := PPContext new.
	context indentStack push: quote.
	self assert: parser parse: '' end: 0.
	self assert: context indentStack size = 0.
	self assert: parser fail: '' end: 0.
	
	context := PPContext new.
	self assert: parser fail: ''.	
		
	context := PPContext new.
	context indentStack push: quote.
	self assert: parser fail: '>' end: 0.

	context := PPContext new.
	context indentStack push: quote.
	context indentStack push: quote.
	self assert: parser parse: ' > ' end: 0.

	context := PPContext new.
	context indentStack push: quote.
	context indentStack push: '  ' asParser.
	self assert: parser fail: ' > ' end: 0.
	
	context := PPContext new.
	context indentStack push: quote.
	context indentStack push: quote.
	context indentStack push: quote.
	self assert: parser parse: ' >   > ' end: 0.
	
		
	context := PPContext new.
	context indentStack push: quote.
	context indentStack push: quote.
	self assert: parser parse: '' end: 0.
	self assert: parser parse: '' end: 0.
	self assert: parser fail: '' end: 0.
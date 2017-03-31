test-quotes
testQuoteIndent
	parser := self parserInstanceFor: #quoteIndent.
	
	context := PPContext new.
	self assert: parser parse: '>' end: 1.
	self assert: context indentStack size = 1.
	self assert: context indentStack top = quote.

	context := PPContext new.
	self assert: parser parse: '   > ' end: 5.	

	context := PPContext new.
	self assert: parser parse: '  >' end: 3.	

	context := PPContext new.
	self assert: parser parse: ' >' end: 2.

	context := PPContext new.
	self assert: parser fail: '    >'.
				
	context := PPContext new.
	context indentStack push: quote.
	self assert: parser parse: '>' end: 1.
	self assert: context indentStack size = 2.
	self assert: context indentStack top = quote.

	context := PPContext new.
	context indentStack push: quote.
	self assert: parser parse: '>  > ' end: 2.

	context := PPContext new.
	context indentStack push: quote.
	self assert: parser parse: ' >    > ' end: 3.
as yet unclassified
testPrefix
	self parse: '' rule: #prefix.
	
	context := PPContext new.
	context indentStack push: quote.
	self parse: '> ' rule: #prefix

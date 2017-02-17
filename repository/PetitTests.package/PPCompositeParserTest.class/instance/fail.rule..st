parsing
fail: aString rule: aSymbol 
	| production context |
	production := self parserInstanceFor: aSymbol.
	context := self context.
	
	result := production end parse: aString withContext: context.
	
	self
		assert: result isPetitFailure
		description: 'Able to parse ' , aString printString.
	^ result
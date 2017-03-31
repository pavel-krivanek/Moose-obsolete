parsing
parse: aString rule: aSymbol to: expectedResult end: end
	| production context |
	production := self parserInstanceFor: aSymbol.
	context := self context.
	
	result := production parse: aString withContext: context.
	self
		deny: result isPetitFailure
		description: 'Unable to parse ' , aString printString.
	
	self assert: expectedResult = result.
	self assert: context position = end.
	^ result
parsing
debug: aString rule: aSymbol
	| production context |
	production := self parserInstanceFor: aSymbol.
	context := self context.
	
	debugResult := production end enableDebug parse: aString withContext: context.
	result := debugResult children first result.
	
	self
		deny: result isPetitFailure
		description: 'Unable to parse ' , aString printString.	
	
	^ debugResult
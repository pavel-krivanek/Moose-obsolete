*GT-PetitParserDebugger
isPPParseMethodContext
	
	^ (self receiver class inheritsFrom: PPParser) and: [ 
		self selector = #parseOn: ] 
	
	

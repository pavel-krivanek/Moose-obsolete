*GT-PetitParserDebugger
isPPParseRootMethodContext
	
	^ (self receiver class inheritsFrom: PPParser) and: [ 
		self selector = #parse: ] 
	
	

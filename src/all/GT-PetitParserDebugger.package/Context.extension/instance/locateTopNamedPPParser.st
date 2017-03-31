*GT-PetitParserDebugger
locateTopNamedPPParser
	
	^ self findContextSuchThat:  [ :ctx | 
		ctx isPPParseMethodContext and: [ 
			(ctx receiver class includesBehavior: PPDelegateParser) and: [  
					ctx receiver name notNil ] ] ]
	
	

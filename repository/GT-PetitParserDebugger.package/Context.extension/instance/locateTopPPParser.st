*GT-PetitParserDebugger
locateTopPPParser
	"Find the first context, starting from the top the stack that was created by a PPParser. "
	
	^ self findContextSuchThat:  [ :ctx | 
		ctx isPPParseMethodContext ]
	
	

*GT-PetitParserDebugger
locateRootPPParser
	"Find the last context starting from the top of the stack (or the first starting from the bottom of the stack)
	that was created by a PPParser"
	| parserContext currentContext |

	parserContext := nil.
	currentContext := self.
	[ 
		(currentContext := currentContext locateTopPPParser) notNil
	 ] whileTrue: [ 
		parserContext := currentContext.
		currentContext := currentContext sender ].

	^ parserContext
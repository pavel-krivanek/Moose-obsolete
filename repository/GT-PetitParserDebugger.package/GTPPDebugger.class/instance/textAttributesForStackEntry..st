printing/formatting
textAttributesForStackEntry: aContext

	(self session isPPProduction: aContext receiver) 
		ifTrue: [ ^ {TextEmphasis bold} ].
		
	(self session rootParserContext  == aContext )
		ifTrue: [ ^ {TextEmphasis italic} ].
		
	^ {TextColor gray}
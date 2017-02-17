initialization
process: aProcess context: aContext

	super process: aProcess context: aContext.
	
	self flag: 'Have a method that is only called when the session is created and put this there'.
	rootParserContext ifNil:  [
		rootParserContext := aContext locateRootPPParser]
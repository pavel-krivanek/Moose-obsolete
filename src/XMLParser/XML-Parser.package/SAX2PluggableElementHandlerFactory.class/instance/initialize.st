initialization
initialize
	super initialize.

	elementClassMapper := self elementClassMapperClass new.
	elementHandlerClass := SAX2ElementHandler.
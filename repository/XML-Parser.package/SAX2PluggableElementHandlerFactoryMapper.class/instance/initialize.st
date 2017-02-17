initialization
initialize
	super initialize.

	elementHandlerFactoryMap := IdentityDictionary new.
	elementHandlerFactory := self defaultElementHandlerFactoryClass new.
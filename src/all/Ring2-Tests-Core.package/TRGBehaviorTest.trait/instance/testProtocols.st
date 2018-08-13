tests
testProtocols

	| newBehavior newSuperclass |
	newBehavior := self behaviorClass unnamed.
	
	self assert: newBehavior asYetUnclassifiedProtocolName isSymbol.

	
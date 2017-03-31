private-entity-creation
createNamespace: aNamespace 
	
	| namespace |
	namespace := namespaces
		at: aNamespace asString asSymbol
		put: FAMIXNamespace new.
	namespace name: 'Smalltalk'.
	^namespace
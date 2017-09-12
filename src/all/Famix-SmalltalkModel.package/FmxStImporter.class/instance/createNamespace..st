private-entity-creation
createNamespace: aNamespace 
	
	| namespace |
	namespace := namespaces
		at: aNamespace asString asSymbol
		put: FmxStNamespace new.
	namespace name: 'Smalltalk'.
	^namespace
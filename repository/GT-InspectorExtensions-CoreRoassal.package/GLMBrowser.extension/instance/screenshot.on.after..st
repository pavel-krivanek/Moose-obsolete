*GT-InspectorExtensions-CoreRoassal
screenshot: aFilenameString on: anObject after: aBlock
	 
	| window |
	window := self openOn: anObject.
	aBlock glamourValue: self asGlamorousMultiValue.
	World doOneCycle.
	PNGReadWriter putForm: window imageForm onFileNamed: aFilenameString.
	^ window
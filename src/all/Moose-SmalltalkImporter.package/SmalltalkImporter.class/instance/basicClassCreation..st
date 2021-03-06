private-entity-creation
basicClassCreation: aClass
	| class anchor |
	class := classes at: aClass put: FAMIXClass new.
	class name: (aClass name replaceAll: Character space with: $_).
	class stub: true.
	importingContext shouldImportNamespace
		ifTrue: [ class container: (self ensureNamespace: aClass environment) ].
	anchor := FAMIXPharoAnchor new
		element: class;
		pharoEntity: aClass;
		yourself.
	class sourceAnchor: anchor.
	self addEntity: anchor.
	^ class
instance creation
on: anOwner update: anOppositeSelector from: anOldObject to: aNewObject
	anOldObject = aNewObject
		ifTrue: [ ^ aNewObject ].
	anOppositeSelector numArgs = 1
		ifTrue: [ |var|
			var := anOppositeSelector allButLast asSymbol.
			anOldObject ifNotNil: [ anOldObject instVarNamed: var put: nil ].
			aNewObject ifNotNil: [ aNewObject instVarNamed: var put: anOwner ].
			^ aNewObject ].
	anOldObject
		ifNotNil: [ (anOldObject perform: anOppositeSelector) uncheckedRemove: anOwner ].
	aNewObject ifNotNil: [ (aNewObject perform: anOppositeSelector) uncheckedAdd: anOwner ].
	^ aNewObject
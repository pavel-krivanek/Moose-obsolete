instance creation
on: anOwner thisSelector: aThisSelector otherSelector: anOtherSelector updateFrom: anOldObject to: aNewObject
	| thisSetter otherSetter |
	anOldObject = aNewObject
		ifTrue: [ ^ aNewObject ].
	thisSetter := (aThisSelector , ':') asSymbol.
	otherSetter := (anOtherSelector , ':') asSymbol.
	anOldObject ifNotNil: [ anOldObject perform: otherSetter with: nil ].
	aNewObject
		ifNotNil: [ (aNewObject perform: anOtherSelector)
				ifNotNil: [ :otherThis | 
					otherThis = anOwner
						ifFalse: [ otherThis perform: thisSetter with: nil ] ].
			aNewObject perform: otherSetter with: anOwner ].
	^ aNewObject
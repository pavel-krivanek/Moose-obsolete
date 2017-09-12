accessing
modifierSet: aBoolean for: aSymbol
	^ aBoolean ifTrue: [self addModifier: aSymbol] ifFalse: [self removeModifier: aSymbol]
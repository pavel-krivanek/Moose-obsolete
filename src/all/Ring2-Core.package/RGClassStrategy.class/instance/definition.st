testing
definition

	| aStream poolString |
	
	self owner usesSpecialSlot 
		ifTrue: [ ^ self definitionWithSlots ].
		
	poolString := self owner sharedPoolsString.
	aStream := (String new: 800) writeStream.
	owner superclass
		ifNil: [ aStream nextPutAll: 'ProtoObject' ]
		ifNotNil: [ aStream nextPutAll: self owner superclass name ].
	aStream
		nextPutAll: self kindOfSubclass;
		store: self owner name.
	self owner hasTraitComposition
		ifTrue:
			[ aStream
				cr;
				tab;
				nextPutAll: 'uses: ';
				nextPutAll: self owner traitCompositionString ].
	aStream
		cr;
		tab;
		nextPutAll: 'instanceVariableNames: ';
		store: self owner instanceVariablesString.
	aStream
		cr;
		tab;
		nextPutAll: 'classVariableNames: ';
		store: self owner classVariablesString.
	poolString = ''
		ifFalse:
			[ aStream
				cr;
				tab;
				nextPutAll: 'poolDictionaries: ';
				store: poolString ].
	aStream
		cr;
		tab;
		nextPutAll: 'package: ';
		store: self owner category asString.
	owner superclass
		ifNil:
			[ aStream
				nextPutAll: '.';
				cr.
			aStream nextPutAll: self owner name.
			aStream
				space;
				nextPutAll: 'superclass: nil' ].
	^ aStream contents
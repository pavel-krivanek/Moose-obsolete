testing
definitionWithSlots

	| aStream poolString|

	poolString := self owner sharedPoolsString.

	aStream := (String new: 800) writeStream.
	self owner superclass 
		ifNil: [aStream nextPutAll: 'ProtoObject']
		ifNotNil: [aStream nextPutAll: self owner superclass name].
	aStream nextPutAll: ' subclass: ';
			store: self owner name.
	(self owner hasTraitComposition) ifTrue: [
		aStream cr; tab; nextPutAll: 'uses: ';
			nextPutAll: self owner traitCompositionString].		
			
	(self layout layoutName = #FixedLayout) ifFalse: [
		aStream cr; tab; nextPutAll: 'layout: ';
			nextPutAll: self layout layoutName].
	aStream cr; tab; nextPutAll: 'slots: ';
			nextPutAll: self owner slotDefinitionString.
	aStream cr; tab; nextPutAll: 'classVariables: ';
			nextPutAll: self owner classVariableDefinitionString.
	poolString = '' ifFalse: [
		aStream cr; tab; nextPutAll: 'poolDictionaries: ';
			store: poolString].
	aStream cr; tab; nextPutAll: 'category: ';
			store: self category asString.

	self owner superclass ifNil: [ 
		aStream nextPutAll: '.'; cr.
		aStream nextPutAll: self owner name.
		aStream space; nextPutAll: 'superclass: nil'. ].

	^ aStream contents
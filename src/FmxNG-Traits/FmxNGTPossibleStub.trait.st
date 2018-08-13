Trait {
	#name : #FmxNGTPossibleStub,
	#instVars : [
		'isStub'
	],
	#category : #'FmxNG-Traits-Utility'
}

{ #category : #meta }
FmxNGTPossibleStub classSide >> annotation [

	<MSEClass: #TPossibleStub super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTPossibleStub classSide >> generatedSlotNames [
	<generated>
	'FmxNGTPossibleStub class>>#generatedSlotNames'.
	^ #(isStub)
]

{ #category : #generator }
FmxNGTPossibleStub classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTPossibleStub >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub ifNil: [ false ]
]

{ #category : #accessing }
FmxNGTPossibleStub >> isStub: anObject [

	<generated>
	isStub := anObject

]

{ #category : #'Famix-Implementation' }
FmxNGTPossibleStub >> stub: aBoolean [
	
	self isStub: aBoolean
]

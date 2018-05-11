Trait {
	#name : #FmxNGTNamed,
	#instVars : [
		'isStub',
		'name'
	],
	#category : #'FmxNG-Traits-Named'
}

{ #category : #meta }
FmxNGTNamed classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TNamed super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTNamed classSide >> generatedSlotNames [
	<generated>
	^ #(isStub name)
]

{ #category : #generator }
FmxNGTNamed classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTNamed >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<generated>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub
]

{ #category : #accessing }
FmxNGTNamed >> isStub: anObject [

	<generated>
	isStub := anObject

]

{ #category : #accessing }
FmxNGTNamed >> name [

	<MSEProperty: #name type: #String>
	<generated>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #accessing }
FmxNGTNamed >> name: anObject [

	<generated>
	name := anObject

]

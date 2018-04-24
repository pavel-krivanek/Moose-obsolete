Trait {
	#name : #FmxNGTTemplate,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTTemplate classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTemplate super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTemplate classSide >> generatedSlotNames [
	<generated>
	^ #(templateUsers templateOwner)
]

{ #category : #generator }
FmxNGTTemplate classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTemplate >> templateOwner [

	<generated>
	^ templateOwner
]

{ #category : #accessing }
FmxNGTTemplate >> templateOwner: anObject [

	<generated>
	templateOwner := anObject

]

{ #category : #accessing }
FmxNGTTemplate >> templateUsers [

	<generated>
	^ templateUsers
]

{ #category : #accessing }
FmxNGTTemplate >> templateUsers: anObject [

	<generated>
	templateUsers value: anObject

]

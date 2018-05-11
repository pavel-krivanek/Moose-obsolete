Trait {
	#name : #FmxNGTReferenceable,
	#instVars : [
		'#incomingReferences => FMMany type: #FmxNGTReference opposite: #target'
	],
	#category : #'FmxNG-Traits-Reference'
}

{ #category : #meta }
FmxNGTReferenceable classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TReferenceable super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTReferenceable classSide >> generatedSlotNames [
	<generated>
	^ #(incomingReferences)
]

{ #category : #generator }
FmxNGTReferenceable classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTReferenceable >> incomingReferences [

	<generated>
	<MSEComment: 'References to this entity by other entities.'>
	^ incomingReferences
]

{ #category : #accessing }
FmxNGTReferenceable >> incomingReferences: anObject [

	<generated>
	incomingReferences value: anObject

]

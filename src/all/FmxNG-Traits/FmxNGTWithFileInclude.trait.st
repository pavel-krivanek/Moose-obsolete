Trait {
	#name : #FmxNGTWithFileInclude,
	#instVars : [
		'#incomingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #target',
		'#outgoingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #source'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithFileInclude classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithFileInclude super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithFileInclude classSide >> generatedSlotNames [
	<generated>
	^ #(incomingIncludeRelations outgoingIncludeRelations)
]

{ #category : #generator }
FmxNGTWithFileInclude classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithFileInclude >> incomingIncludeRelations [

	<generated>
	^ incomingIncludeRelations
]

{ #category : #accessing }
FmxNGTWithFileInclude >> incomingIncludeRelations: anObject [

	<generated>
	incomingIncludeRelations value: anObject

]

{ #category : #accessing }
FmxNGTWithFileInclude >> outgoingIncludeRelations [

	<generated>
	^ outgoingIncludeRelations
]

{ #category : #accessing }
FmxNGTWithFileInclude >> outgoingIncludeRelations: anObject [

	<generated>
	outgoingIncludeRelations value: anObject

]

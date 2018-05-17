Trait {
	#name : #FmxNGTWithFileInclude,
	#instVars : [
		'#incomingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #target',
		'#outgoingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #source'
	],
	#category : #'FmxNG-Traits-FileInclude'
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
	<MSEComment: 'The include entities that have this file as a target.'>
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
	<MSEComment: 'The include entities that have this file as a source.'>
	^ outgoingIncludeRelations
]

{ #category : #accessing }
FmxNGTWithFileInclude >> outgoingIncludeRelations: anObject [

	<generated>
	outgoingIncludeRelations value: anObject

]

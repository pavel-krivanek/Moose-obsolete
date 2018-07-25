Trait {
	#name : #FmxNGTFileInclude,
	#instVars : [
		'#source => FMOne type: #FmxNGTWithFileInclude opposite: #outgoingIncludeRelations',
		'#target => FMOne type: #FmxNGTWithFileInclude opposite: #incomingIncludeRelations'
	],
	#category : #'FmxNG-Traits-FileInclude'
}

{ #category : #meta }
FmxNGTFileInclude classSide >> annotation [

	<MSEClass: #TFileInclude super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFileInclude classSide >> generatedSlotNames [
	<generated>
	'FmxNGTFileInclude class>>#generatedSlotNames'.
	^ #(target source)
]

{ #category : #generator }
FmxNGTFileInclude classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTFileInclude >> source [

	<generated>
	<MSEComment: 'The file that is including'>
	^ source
]

{ #category : #accessing }
FmxNGTFileInclude >> source: anObject [

	<generated>
	source := anObject

]

{ #category : #accessing }
FmxNGTFileInclude >> target [

	<generated>
	<MSEComment: 'The file that is included'>
	^ target
]

{ #category : #accessing }
FmxNGTFileInclude >> target: anObject [

	<generated>
	target := anObject

]

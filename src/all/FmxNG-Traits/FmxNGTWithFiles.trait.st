Trait {
	#name : #FmxNGTWithFiles,
	#instVars : [
		'#containerFiles => FMMany type: #FmxNGTFile opposite: #entities'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithFiles classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithFiles super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithFiles classSide >> generatedSlotNames [
	<generated>
	^ #(containerFiles)
]

{ #category : #generator }
FmxNGTWithFiles classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithFiles >> containerFiles [

	<generated>
	<MSEComment: 'List of files containing the entity'>
	^ containerFiles
]

{ #category : #accessing }
FmxNGTWithFiles >> containerFiles: anObject [

	<generated>
	containerFiles value: anObject

]

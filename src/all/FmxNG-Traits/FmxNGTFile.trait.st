"
It represents a file in the file system.
"
Trait {
	#name : #FmxNGTFile,
	#instVars : [
		'#entities => FMOne type: #FmxNGTWithFiles opposite: #containerFiles',
		'#name'
	],
	#category : #'FmxNG-Traits-File'
}

{ #category : #meta }
FmxNGTFile classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFile super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFile classSide >> generatedSlotNames [
	<generated>
	^ #(entities)
]

{ #category : #generator }
FmxNGTFile classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTFile >> addEntity: famixEntity [
	self entities add: famixEntity
]

{ #category : #accessing }
FmxNGTFile >> entities [

	<generated>
	<MSEComment: 'List of entities defined in the file'>
	^ entities
]

{ #category : #accessing }
FmxNGTFile >> entities: anObject [

	<generated>
	entities := anObject

]

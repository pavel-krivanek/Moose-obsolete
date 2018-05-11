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
	^ #(name entities)
]

{ #category : #generator }
FmxNGTFile classSide >> generatedTraitNames [
	<generated>
	^ #()
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

{ #category : #accessing }
FmxNGTFile >> name [

	<MSEProperty: #name type: #String>
	<generated>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #accessing }
FmxNGTFile >> name: anObject [

	<generated>
	name := anObject

]

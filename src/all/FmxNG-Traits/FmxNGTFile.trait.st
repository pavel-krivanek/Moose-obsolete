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

	<MSEClass: #TFile super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFile classSide >> generatedSlotNames [
	<generated>
	'FmxNGTFile class>>#generatedSlotNames'.
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

{ #category : #accessing }
FmxNGTFile >> entitiesGroup [
	<navigation: 'Entities'>
	
	^ MooseGroup withAll: self entities withDescription: 'Entities defined in a file'
]

{ #category : #testing }
FmxNGTFile >> exists [
	^ self fileExists 
]

{ #category : #testing }
FmxNGTFile >> fileExists [
	name ifNil: [ ^ false ].
	^ self fileReference exists
]

{ #category : #enumerating }
FmxNGTFile >> ifFileExistsDo: aBlock [
	name ifNil: [ ^ aBlock value ].
	^ self fileExists ifTrue: [ aBlock value ]
]

{ #category : #testing }
FmxNGTFile >> isFolder [

	^ false
]

{ #category : #properties }
FmxNGTFile >> numberOfBytes [
	<MSEProperty: #numberOfBytes type: #Number>
	<MSEComment: 'Number of bytes in a file.'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfBytes
		computedAs: [ self fileExists
				ifTrue: [ self fileReference size ]
				ifFalse: [ 0 ] ]
]

{ #category : #properties }
FmxNGTFile >> numberOfCharacters [
	<MSEProperty: #numberOfCharacters type: #Number>
	<MSEComment: 'Number of characters in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfCharacters computedAs: [ self sourceText size ]
]

{ #category : #properties }
FmxNGTFile >> numberOfEmptyLinesOfText [
	<MSEProperty: #numberOfEmptyLinesOfText type: #Number>
	<MSEComment: 'Number of empty lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfEmptyLinesOfText
		computedAs: [ self fileExists
				ifTrue: [ (self sourceText lines select: #isEmpty) size ]
				ifFalse: [ 0 ] ]
]

{ #category : #properties }
FmxNGTFile >> numberOfKiloBytes [
	<MSEProperty: #numberOfKiloBytes type: #Number>
	<MSEComment: 'Number of kilo bytes in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfKiloBytes computedAs: [ (self numberOfBytes / 1024) asFloat ]
]

{ #category : #properties }
FmxNGTFile >> readStream [
	^ self fileReference readStream
]

{ #category : #properties }
FmxNGTFile >> totalNumberOfLinesOfText [
	<MSEProperty: #totalNumberOfLinesOfText type: #Number>
	<MSEComment: 'Number of lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #totalNumberOfLinesOfText
		computedAs: [ 
			self sourceText isEmpty
				ifFalse: [ self sourceText lineCount ]
				ifTrue: [ 
					(name notNil and: [ self exists ])
						ifTrue: [ (self sourceText select: [ :each | each = Character cr ]) size + 1 ]
						ifFalse: [ 0 ] ] ]
]

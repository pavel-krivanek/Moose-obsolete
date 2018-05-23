Class {
	#name : #FAMIXFile,
	#superclass : #FAMIXAbstractFile,
	#traits : 'FmxNGTFile',
	#classTraits : 'FmxNGTFile classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXFile class >> annotation [

	<generated>
	<MSEClass: #File super: #FAMIXAbstractFile>
	<package: #'FmxNGCompatibility-EntitiesOld'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXFile class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXFile class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFile)
]

{ #category : #meta }
FAMIXFile class >> requirements [

	<generated>
	^ {  }
]

{ #category : #properties }
FAMIXFile >> averageNumberOfCharactersPerLine [
	<MSEProperty: #averageNumberOfCharactersPerLine type: #Number>
	<MSEComment: 'Average number of characters per lline of text in a file.'>
	<derived>
	^ self
		lookUpPropertyNamed: #averageNumberOfCharactersPerLine
		computedAs: [ 
			self numberOfLinesOfText isZero
				ifFalse: [ (self numberOfCharacters / self numberOfLinesOfText) asFloat ]
				ifTrue: [ 0 ] ]
]

{ #category : #accessing }
FAMIXFile >> entitiesGroup [
	<navigation: 'Entities'>
	
	^ MooseGroup withAll: self entities withDescription: 'Entities defined in a file'
]

{ #category : #testing }
FAMIXFile >> exists [
	^ self fileExists 
]

{ #category : #testing }
FAMIXFile >> fileExists [
	name ifNil: [ ^ false ].
	^ self fileReference exists
]

{ #category : #testing }
FAMIXFile >> ifFileExistsDo: aBlock [
	name ifNil: [ ^ aBlock value ].
	^ self fileExists ifTrue: [ aBlock value ]
]

{ #category : #'Famix-C-testing' }
FAMIXFile >> isCompilationUnit [
	^ false
]

{ #category : #testing }
FAMIXFile >> isFolder [
	^ false
]

{ #category : #'Famix-C-testing' }
FAMIXFile >> isHeader [
	^ false
]

{ #category : #accessing }
FAMIXFile >> isSourceCodeLoaded [
	self propertyNamed: #sourceText ifAbsentPut: [ ^ false].
	^ true
]

{ #category : #properties }
FAMIXFile >> numberOfBytes [
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
FAMIXFile >> numberOfCharacters [
	<MSEProperty: #numberOfCharacters type: #Number>
	<MSEComment: 'Number of characters in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfCharacters computedAs: [ self sourceText size ]
]

{ #category : #properties }
FAMIXFile >> numberOfEmptyLinesOfText [
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
FAMIXFile >> numberOfKiloBytes [
	<MSEProperty: #numberOfKiloBytes type: #Number>
	<MSEComment: 'Number of kilo bytes in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfKiloBytes computedAs: [ (self numberOfBytes / 1024) asFloat ]
]

{ #category : #accessing }
FAMIXFile >> readStream [
	^ self fileReference readStream
]

{ #category : #accessing }
FAMIXFile >> sourceText [
	^ self
		lookUpPropertyNamed: #sourceText
		computedAs: [ self fileExists
				ifTrue: [ | stream source |
					stream := self readStream.
					source := [ stream contents asString ]
						ensure: [ stream ifNotNil: [ stream close ] ].
					source ]
				ifFalse: [ '' ] ]
]

{ #category : #accessing }
FAMIXFile >> sourceText: aString [
	^self
		propertyNamed: #sourceText
		put: aString
]

{ #category : #properties }
FAMIXFile >> totalNumberOfLinesOfText [
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

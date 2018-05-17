Class {
	#name : #FmxNGFile,
	#superclass : #FmxNGAbstractFile,
	#traits : 'FmxNGTFile',
	#classTraits : 'FmxNGTFile classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGFile class >> annotation [

	<generated>
	<MSEClass: #File super: #FmxNGAbstractFile>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGFile class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGFile class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFile)
]

{ #category : #meta }
FmxNGFile class >> requirements [

	<generated>
	^ {  }
]

{ #category : #properties }
FmxNGFile >> averageNumberOfCharactersPerLine [
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
FmxNGFile >> entitiesGroup [
	<navigation: 'Entities'>
	
	^ MooseGroup withAll: self entities withDescription: 'Entities defined in a file'
]

{ #category : #testing }
FmxNGFile >> exists [
	^ self fileExists 
]

{ #category : #testing }
FmxNGFile >> fileExists [
	name ifNil: [ ^ false ].
	^ self fileReference exists
]

{ #category : #testing }
FmxNGFile >> ifFileExistsDo: aBlock [
	name ifNil: [ ^ aBlock value ].
	^ self fileExists ifTrue: [ aBlock value ]
]

{ #category : #'Famix-C-testing' }
FmxNGFile >> isCompilationUnit [
	^ false
]

{ #category : #testing }
FmxNGFile >> isFolder [
	^ false
]

{ #category : #'Famix-C-testing' }
FmxNGFile >> isHeader [
	^ false
]

{ #category : #accessing }
FmxNGFile >> isSourceCodeLoaded [
	self propertyNamed: #sourceText ifAbsentPut: [ ^ false].
	^ true
]

{ #category : #properties }
FmxNGFile >> numberOfBytes [
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
FmxNGFile >> numberOfCharacters [
	<MSEProperty: #numberOfCharacters type: #Number>
	<MSEComment: 'Number of characters in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfCharacters computedAs: [ self sourceText size ]
]

{ #category : #properties }
FmxNGFile >> numberOfEmptyLinesOfText [
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
FmxNGFile >> numberOfKiloBytes [
	<MSEProperty: #numberOfKiloBytes type: #Number>
	<MSEComment: 'Number of kilo bytes in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfKiloBytes computedAs: [ (self numberOfBytes / 1024) asFloat ]
]

{ #category : #accessing }
FmxNGFile >> readStream [
	^ self fileReference readStream
]

{ #category : #accessing }
FmxNGFile >> sourceText [
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
FmxNGFile >> sourceText: aString [
	^self
		propertyNamed: #sourceText
		put: aString
]

{ #category : #properties }
FmxNGFile >> totalNumberOfLinesOfText [
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

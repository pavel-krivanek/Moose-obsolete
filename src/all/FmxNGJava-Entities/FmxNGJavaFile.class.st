Class {
	#name : #FmxNGJavaFile,
	#superclass : #FmxNGJavaAbstractFile,
	#traits : 'FmxNGTFile',
	#classTraits : 'FmxNGTFile classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaFile class >> annotation [

	<generated>
	<MSEClass: #File super: #FmxNGJavaAbstractFile>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaFile class >> generatedSlotNames [
	<generated>
	'FmxNGJavaFile class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaFile class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFile)
]

{ #category : #meta }
FmxNGJavaFile class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> averageNumberOfCharactersPerLine [
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

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> entitiesGroup [
	<navigation: 'Entities'>
	
	^ MooseGroup withAll: self entities withDescription: 'Entities defined in a file'
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> exists [
	^ self fileExists 
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> fileExists [
	name ifNil: [ ^ false ].
	^ self fileReference exists
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> ifFileExistsDo: aBlock [
	name ifNil: [ ^ aBlock value ].
	^ self fileExists ifTrue: [ aBlock value ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> isCompilationUnit [
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> isSourceCodeLoaded [
	self propertyNamed: #sourceText ifAbsentPut: [ ^ false].
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> numberOfBytes [
	<MSEProperty: #numberOfBytes type: #Number>
	<MSEComment: 'Number of bytes in a file.'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfBytes
		computedAs: [ self fileExists
				ifTrue: [ self fileReference size ]
				ifFalse: [ 0 ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> numberOfCharacters [
	<MSEProperty: #numberOfCharacters type: #Number>
	<MSEComment: 'Number of characters in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfCharacters computedAs: [ self sourceText size ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> numberOfEmptyLinesOfText [
	<MSEProperty: #numberOfEmptyLinesOfText type: #Number>
	<MSEComment: 'Number of empty lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfEmptyLinesOfText
		computedAs: [ self fileExists
				ifTrue: [ (self sourceText lines select: #isEmpty) size ]
				ifFalse: [ 0 ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> numberOfKiloBytes [
	<MSEProperty: #numberOfKiloBytes type: #Number>
	<MSEComment: 'Number of kilo bytes in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfKiloBytes computedAs: [ (self numberOfBytes / 1024) asFloat ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> readStream [
	^ self fileReference readStream
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> sourceText [
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

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> sourceText: aString [
	^self
		propertyNamed: #sourceText
		put: aString
]

{ #category : #'as yet unclassified' }
FmxNGJavaFile >> totalNumberOfLinesOfText [
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

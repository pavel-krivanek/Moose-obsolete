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
FmxNGJavaFile >> isSourceCodeLoaded [
	self propertyNamed: #sourceText ifAbsentPut: [ ^ false].
	^ true
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

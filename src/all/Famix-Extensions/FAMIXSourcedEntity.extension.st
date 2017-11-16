Extension { #name : #FAMIXSourcedEntity }

{ #category : #'*Famix-Extensions' }
FAMIXSourcedEntity >> accept: aVisitor [

	aVisitor visitEntity: self
]

{ #category : #'*Famix-Extensions' }
FAMIXSourcedEntity >> copyFrom: anEntity within: aVisitor [

	sourceAnchor := 	aVisitor visit: anEntity sourceAnchor.
	anEntity comments do: [:com | 
		self comments add: (aVisitor visit: com) ].

]

{ #category : #'*Famix-Extensions' }
FAMIXSourcedEntity >> formattedSourceText [
	^ self sourceLanguage format: self sourceText from: self
]

{ #category : #'*Famix-Extensions-testing' }
FAMIXSourcedEntity >> hasComments [
	^ self comments isEmpty not
]

{ #category : #'*Famix-Extensions-testing' }
FAMIXSourcedEntity >> hasSourceAnchor [
	^ self sourceAnchor notNil
]

{ #category : #'*Famix-Extensions' }
FAMIXSourcedEntity >> numberOfJavaNullChecks [
	<MSEProperty: #numberOfJavaNullChecks type: #Number> <derived>
	^self
		lookUpPropertyNamed: #numberOfJavaNullChecks
		computedAs: [
			| nullCheckTextPatterns |
			nullCheckTextPatterns := #('== null' '!= null' 'null ==' 'null !=').
			(self sourceText allRegexMatches: ( '|' join: nullCheckTextPatterns)) size ]
]

{ #category : #'*Famix-Extensions' }
FAMIXSourcedEntity >> numberOfLinesOfCodeWithMoreThanOneCharacter [
	<MSEProperty: #numberOfLinesOfCodeWithMoreThanOneCharacter type: #Number> <derived>
	<MSEComment: 'This metric is essentially similar to the numberOfLinesOfCode one, 
	the difference being that it only counts the lines with more than one non-whitespace characters.
	This metric is particularly useful for comparing the density of other metrics on a line of code.
	For example, depending on the formatting style chosen a Java curly brace, or a Smalltalk block 
	can appear inline or on a separate line. For normalization purposes, these commonly appearing 
	cases can be ruled out through the present metric.'>
	^self
		lookUpPropertyNamed: #numberOfLinesOfCodeWithMoreThanOneCharacter
		computedAs: [			
			(self sourceText lines select: [ :line |
				line trimBoth size > 1 ]) size ]
]

{ #category : #'*Famix-Extensions' }
FAMIXSourcedEntity >> sourceText [
	self isStub ifTrue: [ ^ '' ].
	
	^ self sourceAnchor 
		ifNil: [ '' ]
		ifNotNil: [ self sourceAnchor sourceText ]
]

{ #category : #'*Famix-Extensions' }
FAMIXSourcedEntity >> structuralChildren [ 
	^ #()
]

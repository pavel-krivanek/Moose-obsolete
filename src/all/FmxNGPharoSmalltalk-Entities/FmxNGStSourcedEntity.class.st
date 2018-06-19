Class {
	#name : #FmxNGStSourcedEntity,
	#superclass : #FmxNGStEntity,
	#traits : 'FmxNGTWithComments + FmxNGTWithFiles + FmxNGTWithSourceAnchor + FmxNGTWithSourceLanguage + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTWithComments classTrait + FmxNGTWithFiles classTrait + FmxNGTWithSourceAnchor classTrait + FmxNGTWithSourceLanguage classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStSourcedEntity class >> annotation [

	<generated>
	<MSEClass: #SourcedEntity super: #FmxNGStEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStSourcedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGStSourcedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStSourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithComments FmxNGTWithFiles FmxNGTWithSourceAnchor FmxNGTWithSourceLanguage)
]

{ #category : #meta }
FmxNGStSourcedEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGStSourcedEntity >> containerFiles [
	"this method returns a collection because a source entity can be defined in single as well as multiple files. Hence we support the language that allow the separation of declaration and definition"

	<MSEProperty: #containerFiles type: #FAMIXFile>
	<multivalued>
	<MSEComment: 'List of files containing the entity'>
	"<container> -> should not be on this side..."
	
	^ self sourceAnchor ifNotNil: [ self sourceAnchor containerFiles ] ifNil: [ #() ]
]

{ #category : #accessing }
FmxNGStSourcedEntity >> hasComments [
	^ self comments isEmpty not
]

{ #category : #accessing }
FmxNGStSourcedEntity >> hasSourceAnchor [
	^ self sourceAnchor notNil
]

{ #category : #accessing }
FmxNGStSourcedEntity >> isImplicitVariable [
	^false
]

{ #category : #accessing }
FmxNGStSourcedEntity >> numberOfJavaNullChecks [
	<MSEProperty: #numberOfJavaNullChecks type: #Number> <derived>
	^self
		lookUpPropertyNamed: #numberOfJavaNullChecks
		computedAs: [
			| nullCheckTextPatterns |
			nullCheckTextPatterns := #('== null' '!= null' 'null ==' 'null !=').
			(self sourceText allRegexMatches: ( '|' join: nullCheckTextPatterns)) size ]
]

{ #category : #accessing }
FmxNGStSourcedEntity >> numberOfLinesOfCodeWithMoreThanOneCharacter [
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

{ #category : #accessing }
FmxNGStSourcedEntity >> sourceAnchor: aSourceAnchor [
	sourceAnchor := aSourceAnchor.
	
	sourceAnchor ifNil: [ ^ self ].
	aSourceAnchor element = self ifFalse: [ aSourceAnchor element: self ]
]

{ #category : #accessing }
FmxNGStSourcedEntity >> sourceLanguage [
	^ self declaredSourceLanguage ifNil: [
		self mooseModel 
			ifNil: [ FAMIXUnknownSourceLanguage new ] 
			ifNotNil: [ self mooseModel sourceLanguage ] ]
]

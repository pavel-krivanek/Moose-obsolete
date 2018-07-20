Class {
	#name : #FmxNGJavaUnknownVariable,
	#superclass : #FmxNGJavaStructuralEntity,
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaUnknownVariable class >> annotation [

	<generated>
	<MSEClass: #UnknownVariable super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaUnknownVariable class >> generatedSlotNames [
	<generated>
	'FmxNGJavaUnknownVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaUnknownVariable class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGJavaUnknownVariable class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaUnknownVariable >> accept: aVisitor [

	aVisitor visitUnknownVariable: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaUnknownVariable >> belongsTo [
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaUnknownVariable >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self container: (aVisitor visit: anEntity container).

]

{ #category : #'as yet unclassified' }
FmxNGJavaUnknownVariable >> namespaceScope [
	"namespaceScope does not make sense for an unknown variable,
	so we return nil"
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaUnknownVariable >> packageScope [
	"packageScope does not make sense for an unknown variable,
	so we return nil"
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaUnknownVariable >> typeScope [
	"typeScope does not make sense for an unknown variable,
	so we return nil"
	^ nil
]

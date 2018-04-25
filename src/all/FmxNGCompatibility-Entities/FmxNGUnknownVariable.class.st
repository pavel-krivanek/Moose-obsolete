Class {
	#name : #FmxNGUnknownVariable,
	#superclass : #FmxNGStructuralEntity,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGUnknownVariable class >> annotation [

	<generated>
	<MSEClass: #UnknownVariable super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGUnknownVariable class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGUnknownVariable class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGUnknownVariable class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FmxNGUnknownVariable >> accept: aVisitor [

	aVisitor visitUnknownVariable: self
]

{ #category : #accessing }
FmxNGUnknownVariable >> belongsTo [
	^ nil
]

{ #category : #'Famix-Extensions' }
FmxNGUnknownVariable >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self container: (aVisitor visit: anEntity container).

]

{ #category : #'moosechef-scoping-filtering' }
FmxNGUnknownVariable >> namespaceScope [
	"namespaceScope does not make sense for an unknown variable,
	so we return nil"
	^ nil
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGUnknownVariable >> packageScope [
	"packageScope does not make sense for an unknown variable,
	so we return nil"
	^ nil
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGUnknownVariable >> typeScope [
	"typeScope does not make sense for an unknown variable,
	so we return nil"
	^ nil
]

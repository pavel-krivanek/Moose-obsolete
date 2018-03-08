Class {
	#name : #FmxNGUnknownVariable,
	#superclass : #FmxNGUnknownVariableGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGUnknownVariable class >> annotation [

	<MSEClass: #UnknownVariable super: #FmxNGUnknownVariableGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
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

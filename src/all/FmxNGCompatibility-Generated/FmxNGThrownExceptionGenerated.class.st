Class {
	#name : #FmxNGThrownExceptionGenerated,
	#superclass : #FmxNGException,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithThrownExceptions opposite: #thrownExceptions'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGThrownExceptionGenerated class >> annotation [

	<MSEClass: #ThrownExceptionGenerated super: #FmxNGException>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGThrownExceptionGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGThrownExceptionGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTThrownException}
]

{ #category : #'_fromTrait_FmxNGTThrownExceptionGenerated' }
FmxNGThrownExceptionGenerated >> definingEntity [

	^ definingEntity
]

{ #category : #'_fromTrait_FmxNGTThrownExceptionGenerated' }
FmxNGThrownExceptionGenerated >> definingEntity: anObject [

	definingEntity := anObject

]

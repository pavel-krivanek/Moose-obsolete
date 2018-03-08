Class {
	#name : #FmxNGCaughtExceptionGenerated,
	#superclass : #FmxNGException,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithCaughtExceptions opposite: #caughtExceptions'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGCaughtExceptionGenerated class >> annotation [

	<MSEClass: #CaughtExceptionGenerated super: #FmxNGException>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGCaughtExceptionGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGCaughtExceptionGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTCaughtException}
]

{ #category : #'_fromTrait_FmxNGTCaughtExceptionGenerated' }
FmxNGCaughtExceptionGenerated >> definingEntity [

	^ definingEntity
]

{ #category : #'_fromTrait_FmxNGTCaughtExceptionGenerated' }
FmxNGCaughtExceptionGenerated >> definingEntity: anObject [

	definingEntity := anObject

]

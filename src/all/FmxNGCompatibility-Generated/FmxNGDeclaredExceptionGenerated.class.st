Class {
	#name : #FmxNGDeclaredExceptionGenerated,
	#superclass : #FmxNGException,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithDeclaredExceptions opposite: #declaredExceptions'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGDeclaredExceptionGenerated class >> annotation [

	<MSEClass: #DeclaredExceptionGenerated super: #FmxNGException>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGDeclaredExceptionGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGDeclaredExceptionGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTDeclaredException}
]

{ #category : #'_fromTrait_FmxNGTDeclaredExceptionGenerated' }
FmxNGDeclaredExceptionGenerated >> definingEntity [

	^ definingEntity
]

{ #category : #'_fromTrait_FmxNGTDeclaredExceptionGenerated' }
FmxNGDeclaredExceptionGenerated >> definingEntity: anObject [

	definingEntity := anObject

]

Class {
	#name : #FmxNGClassGenerated,
	#superclass : #FmxNGType,
	#instVars : [
		'#exceptions => FMMany type: #FmxNGTException opposite: #exceptionClass'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGClassGenerated class >> annotation [

	<MSEClass: #ClassGenerated super: #FmxNGType>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGClassGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGClassGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTWithExceptions}
]

{ #category : #'_fromTrait_FmxNGTWithExceptionsGenerated' }
FmxNGClassGenerated >> exceptions [

	<MSEComment: 'Exceptions which class is myself.'>
	^ exceptions
]

{ #category : #'_fromTrait_FmxNGTWithExceptionsGenerated' }
FmxNGClassGenerated >> exceptions: anObject [

	exceptions value: anObject

]

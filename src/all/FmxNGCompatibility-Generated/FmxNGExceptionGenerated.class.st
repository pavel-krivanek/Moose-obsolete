Class {
	#name : #FmxNGExceptionGenerated,
	#superclass : #FmxNGEntity,
	#instVars : [
		'#exceptionClass => FMOne type: #FmxNGTWithExceptions opposite: #exceptions'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGExceptionGenerated class >> annotation [

	<MSEClass: #ExceptionGenerated super: #FmxNGEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGExceptionGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGExceptionGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTException}
]

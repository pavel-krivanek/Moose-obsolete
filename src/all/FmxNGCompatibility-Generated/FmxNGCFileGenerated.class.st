Class {
	#name : #FmxNGCFileGenerated,
	#superclass : #FmxNGFile,
	#instVars : [
		'#incomingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #target',
		'#outgoingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #source'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGCFileGenerated class >> annotation [

	<MSEClass: #CFileGenerated super: #FmxNGFile>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGCFileGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGCFileGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTWithFileInclude}
]

{ #category : #'_fromTrait_FmxNGTWithFileIncludeGenerated' }
FmxNGCFileGenerated >> incomingIncludeRelations [

	^ incomingIncludeRelations
]

{ #category : #'_fromTrait_FmxNGTWithFileIncludeGenerated' }
FmxNGCFileGenerated >> incomingIncludeRelations: anObject [

	incomingIncludeRelations value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithFileIncludeGenerated' }
FmxNGCFileGenerated >> outgoingIncludeRelations [

	^ outgoingIncludeRelations
]

{ #category : #'_fromTrait_FmxNGTWithFileIncludeGenerated' }
FmxNGCFileGenerated >> outgoingIncludeRelations: anObject [

	outgoingIncludeRelations value: anObject

]

Class {
	#name : #FmxCHFileGenerated,
	#superclass : #FmxCFileGenerated,
	#instVars : [
		'#module => FMOne type: #FmxCTModule opposite: #hFile'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCHFileGenerated class >> annotation [

	<MSEClass: #HFile super: #FmxCFileGenerated>
	<package: #FmxC>
	^self
]

{ #category : #meta }
FmxCHFileGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCHFileGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTHFile}
]

{ #category : #'_fromTrait_FmxCTHFileGenerated' }
FmxCHFileGenerated >> module [

	<container>

	^ module
]

{ #category : #'_fromTrait_FmxCTHFileGenerated' }
FmxCHFileGenerated >> module: anObject [

	module := anObject

]

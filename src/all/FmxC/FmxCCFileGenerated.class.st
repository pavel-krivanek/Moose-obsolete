Class {
	#name : #FmxCCFileGenerated,
	#superclass : #FmxCFileGenerated,
	#instVars : [
		'#module => FMOne type: #FmxCTModule opposite: #cFile'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCCFileGenerated class >> annotation [

	<MSEClass: #CFile super: #FmxCFileGenerated>
	<package: #FmxC>
	^self
]

{ #category : #meta }
FmxCCFileGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCCFileGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTCFile}
]

{ #category : #'_fromTrait_FmxCTCFileGenerated' }
FmxCCFileGenerated >> module [

	<container>

	^ module
]

{ #category : #'_fromTrait_FmxCTCFileGenerated' }
FmxCCFileGenerated >> module: anObject [

	module := anObject

]

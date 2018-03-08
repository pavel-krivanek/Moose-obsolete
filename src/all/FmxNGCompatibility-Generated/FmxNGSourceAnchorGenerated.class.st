Class {
	#name : #FmxNGSourceAnchorGenerated,
	#superclass : #FmxNGEntity,
	#instVars : [
		'#element => FMOne type: #FmxNGTWithSourceAnchor opposite: #sourceAnchor',
		'#pharoEntity'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGSourceAnchorGenerated class >> annotation [

	<MSEClass: #SourceAnchorGenerated super: #FmxNGEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGSourceAnchorGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGSourceAnchorGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTSourceAnchor}
]

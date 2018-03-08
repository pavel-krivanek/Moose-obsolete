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

{ #category : #'_fromTrait_FmxNGTSourceAnchorGenerated' }
FmxNGSourceAnchorGenerated >> element [

	<MSEComment: 'Enable the accessibility to the famix entity that this class is a source pointer for'>
	<container>

	^ element
]

{ #category : #'_fromTrait_FmxNGTSourceAnchorGenerated' }
FmxNGSourceAnchorGenerated >> element: anObject [

	element := anObject

]

{ #category : #'_fromTrait_FmxNGTSourceAnchorGenerated' }
FmxNGSourceAnchorGenerated >> pharoEntity [

	<MSEProperty: #pharoEntity type: #Object>
	^ pharoEntity
]

{ #category : #'_fromTrait_FmxNGTSourceAnchorGenerated' }
FmxNGSourceAnchorGenerated >> pharoEntity: anObject [

	pharoEntity := anObject

]

"
FAMIXSourceAnchor is an abstract class representing a pointer to a source. The source can be identified in multiple ways as specified by the subclasses.  The famix entity that this class is a source pointer for, is accessible via element property.
"
Class {
	#name : #FmxNGTSourceAnchorGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#element => FMOne type: #FmxNGTWithSourceAnchor opposite: #sourceAnchor'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTSourceAnchorGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSourceAnchorGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTSourceAnchorGenerated >> element [

	<MSEComment: 'Enable the accessibility to the famix entity that this class is a source pointer for'>
	<container>

	^ element
]

{ #category : #accessing }
FmxNGTSourceAnchorGenerated >> element: anObject [

	element := anObject

]

{ #category : #accessing }
FmxNGTSourceAnchorGenerated >> pharoEntity [

	<MSEProperty: #pharoEntity type: #Object>
	^ pharoEntity
]

{ #category : #accessing }
FmxNGTSourceAnchorGenerated >> pharoEntity: anObject [

	pharoEntity := anObject

]

"
FAMIXSourceAnchor is an abstract class representing a pointer to a source. The source can be identified in multiple ways as specified by the subclasses.  The famix entity that this class is a source pointer for, is accessible via element property.
"
Class {
	#name : #FmxNGTSourceAnchor,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#element => FMOne type: #FmxNGTWithSourceAnchor opposite: #sourceAnchor'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSourceAnchor class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TSourceAnchor super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTSourceAnchor >> element [

	<generated>
	<MSEComment: 'Enable the accessibility to the famix entity that this class is a source pointer for'>
	<container>

	^ element
]

{ #category : #accessing }
FmxNGTSourceAnchor >> element: anObject [

	<generated>
	element := anObject

]

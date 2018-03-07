"
FAMIXAttribute represents a field of a class. It is an attribute of the parent type.

"
Class {
	#name : #FmxNGTAttributeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentType => FMOne type: #FmxNGTWithAttributes opposite: #attributes'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTAttributeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAttributeGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAttributeGenerated >> parentType [

	<MSEComment: 'Type declaring the attribute. belongsTo implementation'>
	<container>

	^ parentType
]

{ #category : #accessing }
FmxNGTAttributeGenerated >> parentType: anObject [

	parentType := anObject

]

"
FAMIXAttribute represents a field of a class. It is an attribute of the parent type.

"
Class {
	#name : #FmxNGTAttribute,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentType => FMOne type: #FmxNGTWithAttributes opposite: #attributes'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAttribute class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAttribute super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTAttribute >> parentType [

	<generated>
	<MSEComment: 'Type declaring the attribute. belongsTo implementation'>
	<container>

	^ parentType
]

{ #category : #accessing }
FmxNGTAttribute >> parentType: anObject [

	<generated>
	parentType := anObject

]

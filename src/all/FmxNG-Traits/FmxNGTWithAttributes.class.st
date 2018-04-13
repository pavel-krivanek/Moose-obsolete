Class {
	#name : #FmxNGTWithAttributes,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAttribute opposite: #parentType'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAttributes class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAttributes super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithAttributes >> attributes [

	<generated>
	<MSEComment: 'List of attributes declared by this type.'>
	^ attributes
]

{ #category : #accessing }
FmxNGTWithAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject

]

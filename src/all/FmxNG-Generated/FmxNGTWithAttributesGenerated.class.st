Class {
	#name : #FmxNGTWithAttributesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAttribute opposite: #parentType'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithAttributesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAttributes super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithAttributesGenerated >> attributes [

	<MSEComment: 'List of attributes declared by this type.'>
	^ attributes
]

{ #category : #accessing }
FmxNGTWithAttributesGenerated >> attributes: anObject [

	attributes value: anObject

]

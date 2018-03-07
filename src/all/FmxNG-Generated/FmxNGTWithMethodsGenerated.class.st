Class {
	#name : #FmxNGTWithMethodsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#methods => FMMany type: #FmxNGTMethod opposite: #parentType'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithMethodsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithMethodsGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithMethodsGenerated >> methods [

	<MSEComment: 'Methods declared by this type.'>
	^ methods
]

{ #category : #accessing }
FmxNGTWithMethodsGenerated >> methods: anObject [

	methods value: anObject

]

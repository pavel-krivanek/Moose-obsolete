Class {
	#name : #FmxNGTWithTypes,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#types => FMMany type: #FmxNGTType opposite: #typeContainer'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithTypes class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTypes super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithTypes >> types [

	<generated>
	^ types
]

{ #category : #accessing }
FmxNGTWithTypes >> types: anObject [

	<generated>
	types value: anObject

]

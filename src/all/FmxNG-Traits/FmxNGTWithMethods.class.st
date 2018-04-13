Class {
	#name : #FmxNGTWithMethods,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#methods => FMMany type: #FmxNGTMethod opposite: #parentType'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithMethods class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithMethods super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithMethods >> methods [

	<generated>
	<MSEComment: 'Methods declared by this type.'>
	^ methods
]

{ #category : #accessing }
FmxNGTWithMethods >> methods: anObject [

	<generated>
	methods value: anObject

]

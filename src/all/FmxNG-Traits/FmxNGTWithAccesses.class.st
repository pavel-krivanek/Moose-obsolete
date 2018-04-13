Class {
	#name : #FmxNGTWithAccesses,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#accesses => FMMany type: #FmxNGTAccess opposite: #accessor'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAccesses class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAccesses super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithAccesses >> accesses [

	<generated>
	<MSEComment: 'Accesses to variables made by this behaviour.'>
	^ accesses
]

{ #category : #accessing }
FmxNGTWithAccesses >> accesses: anObject [

	<generated>
	accesses value: anObject

]

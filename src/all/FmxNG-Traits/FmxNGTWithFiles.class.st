Class {
	#name : #FmxNGTWithFiles,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#containerFiles => FMMany type: #FmxNGTFile opposite: #entities'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithFiles class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithFiles super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithFiles >> containerFiles [

	<generated>
	<MSEComment: 'List of files containing the entity'>
	^ containerFiles
]

{ #category : #accessing }
FmxNGTWithFiles >> containerFiles: anObject [

	<generated>
	containerFiles value: anObject

]

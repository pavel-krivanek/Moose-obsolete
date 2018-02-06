Class {
	#name : #FmxNGTWithFilesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#containerFiles => FMMany type: #FmxNGTFile opposite: #entities'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithFilesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithFiles super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithFilesGenerated >> containerFiles [

	<MSEComment: 'List of files containing the entity'>
	^ containerFiles
]

{ #category : #accessing }
FmxNGTWithFilesGenerated >> containerFiles: anObject [

	containerFiles value: anObject

]

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

	<ignoreInTraitUsers>
	<MSEClass: #TWithFiles super: #FmxNGTWithFilesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

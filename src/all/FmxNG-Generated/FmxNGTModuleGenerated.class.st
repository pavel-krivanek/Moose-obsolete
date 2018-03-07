"
FAMIXModule represents a that basically provides a simple scoping abstraction for a .C/.CPP/.H files.

"
Class {
	#name : #FmxNGTModuleGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#moduleFiles => FMMany type: #FmxNGTWithModule opposite: #module'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTModuleGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TModuleGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTModuleGenerated >> moduleFiles [

	^ moduleFiles
]

{ #category : #accessing }
FmxNGTModuleGenerated >> moduleFiles: anObject [

	moduleFiles value: anObject

]

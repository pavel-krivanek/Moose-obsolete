"
FAMIXModule represents a that basically provides a simple scoping abstraction for a .C/.CPP/.H files.

"
Class {
	#name : #FmxNGTModule,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#moduleFiles => FMMany type: #FmxNGTWithModule opposite: #module'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTModule class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TModule super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTModule >> moduleFiles [

	<generated>
	^ moduleFiles
]

{ #category : #accessing }
FmxNGTModule >> moduleFiles: anObject [

	<generated>
	moduleFiles value: anObject

]

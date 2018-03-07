Class {
	#name : #FmxNGTNamed,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'isStub',
		'name'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTNamed class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TNamed super: #FmxNGTNamedGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

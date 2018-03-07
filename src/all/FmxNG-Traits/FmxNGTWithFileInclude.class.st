Class {
	#name : #FmxNGTWithFileInclude,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #target',
		'#outgoingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #source'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithFileInclude class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithFileInclude super: #FmxNGTWithFileIncludeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

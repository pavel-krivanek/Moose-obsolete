Class {
	#name : #FmxNGTFileInclude,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#target => FMOne type: #FmxNGTWithFileInclude opposite: #incomingIncludeRelations',
		'#source => FMOne type: #FmxNGTWithFileInclude opposite: #outgoingIncludeRelations'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTFileInclude class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFileInclude super: #FmxNGTFileIncludeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

"
FAMIXFunction represents a behavioural entity in a procedural language.
"
Class {
	#name : #FmxNGTFunctionGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#functionOwner => FMOne type: #FmxNGTWithFunctions opposite: #functions'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTFunctionGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFunction super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTFunctionGenerated >> functionOwner [

	^ functionOwner
]

{ #category : #accessing }
FmxNGTFunctionGenerated >> functionOwner: anObject [

	functionOwner := anObject

]

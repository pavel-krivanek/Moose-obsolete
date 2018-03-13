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
	<MSEClass: #TFunctionGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTFunctionGenerated >> functionOwner [

	<MSEComment: 'The container defining the function. The function is placed in a container, because certain languages can nest functions in functions.'>
	<container>

	^ functionOwner
]

{ #category : #accessing }
FmxNGTFunctionGenerated >> functionOwner: anObject [

	functionOwner := anObject

]

Class {
	#name : #FmxNGTFunction,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#functionOwner => FMOne type: #FmxNGTWithFunctions opposite: #functions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTFunction class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFunction super: #FmxNGTFunctionGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

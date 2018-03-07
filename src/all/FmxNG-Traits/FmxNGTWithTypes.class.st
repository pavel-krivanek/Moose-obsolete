Class {
	#name : #FmxNGTWithTypes,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#types => FMMany type: #FmxNGTType opposite: #typeContainer'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithTypes class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTypes super: #FmxNGTWithTypesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

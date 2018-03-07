Class {
	#name : #FmxNGTWithAttributes,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAttribute opposite: #parentType'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAttributes class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAttributes super: #FmxNGTWithAttributesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

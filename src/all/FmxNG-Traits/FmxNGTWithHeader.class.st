Class {
	#name : #FmxNGTWithHeader,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#header => FMOne type: #FmxNGTHeader opposite: #headerOwner'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithHeader class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithHeader super: #FmxNGTWithHeaderGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

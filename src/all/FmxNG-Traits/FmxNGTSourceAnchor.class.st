Class {
	#name : #FmxNGTSourceAnchor,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#element => FMOne type: #FmxNGTWithSourceAnchor opposite: #sourceAnchor',
		'#pharoEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSourceAnchor class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSourceAnchor super: #FmxNGTSourceAnchorGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

Class {
	#name : #FmxNGTWithSourceAnchor,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#sourceAnchor => FMOne type: #FmxNGTSourceAnchor opposite: #element'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithSourceAnchor class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSourceAnchor super: #FmxNGTWithSourceAnchorGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

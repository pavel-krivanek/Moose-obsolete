Class {
	#name : #FmxNGTWithSourceAnchorGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#sourceAnchor => FMOne type: #FmxNGTSourceAnchor opposite: #element'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithSourceAnchorGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSourceAnchor super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithSourceAnchorGenerated >> sourceAnchor [

	<MSEComment: 'SourceAnchor entity linking to the original source code for this entity'>
	^ sourceAnchor
]

{ #category : #accessing }
FmxNGTWithSourceAnchorGenerated >> sourceAnchor: anObject [

	sourceAnchor := anObject

]

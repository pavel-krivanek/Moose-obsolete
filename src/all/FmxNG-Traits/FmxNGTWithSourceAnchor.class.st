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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSourceAnchor super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithSourceAnchor >> sourceAnchor [

	<generated>
	<MSEComment: 'SourceAnchor entity linking to the original source code for this entity'>
	^ sourceAnchor
]

{ #category : #accessing }
FmxNGTWithSourceAnchor >> sourceAnchor: anObject [

	<generated>
	sourceAnchor := anObject

]

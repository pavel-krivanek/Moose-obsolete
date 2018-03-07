Class {
	#name : #FmxNGTWithHeaderGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#header => FMOne type: #FmxNGTHeader opposite: #headerOwner'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithHeaderGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithHeaderGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithHeaderGenerated >> header [

	^ header
]

{ #category : #accessing }
FmxNGTWithHeaderGenerated >> header: anObject [

	header := anObject

]

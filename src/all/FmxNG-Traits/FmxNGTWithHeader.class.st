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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithHeader super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithHeader >> header [

	<generated>
	^ header
]

{ #category : #accessing }
FmxNGTWithHeader >> header: anObject [

	<generated>
	header := anObject

]

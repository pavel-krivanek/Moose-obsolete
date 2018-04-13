"
I represent a header file. Typically a .h or .hpp
"
Class {
	#name : #FmxNGTHeader,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#headerOwner => FMOne type: #FmxNGTWithHeader opposite: #header'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTHeader class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #THeader super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTHeader >> headerOwner [

	<generated>
	^ headerOwner
]

{ #category : #accessing }
FmxNGTHeader >> headerOwner: anObject [

	<generated>
	headerOwner := anObject

]

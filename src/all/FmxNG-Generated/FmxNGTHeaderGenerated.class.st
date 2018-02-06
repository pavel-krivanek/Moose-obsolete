"
I represent a header file. Typically a .h or .hpp
"
Class {
	#name : #FmxNGTHeaderGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#headerOwner => FMOne type: #FmxNGTWithHeader opposite: #header'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTHeaderGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #THeader super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTHeaderGenerated >> headerOwner [

	^ headerOwner
]

{ #category : #accessing }
FmxNGTHeaderGenerated >> headerOwner: anObject [

	headerOwner := anObject

]

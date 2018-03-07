Class {
	#name : #FmxNGTSubGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#supers => FMOne type: #FmxNGTSuper opposite: #subs'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTSubGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSubGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTSubGenerated >> supers [

	^ supers
]

{ #category : #accessing }
FmxNGTSubGenerated >> supers: anObject [

	supers := anObject

]

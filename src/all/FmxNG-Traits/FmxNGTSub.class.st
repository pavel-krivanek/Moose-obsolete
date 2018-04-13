Class {
	#name : #FmxNGTSub,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#supers => FMOne type: #FmxNGTSuper opposite: #subs'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSub class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TSub super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTSub >> supers [

	<generated>
	^ supers
]

{ #category : #accessing }
FmxNGTSub >> supers: anObject [

	<generated>
	supers := anObject

]

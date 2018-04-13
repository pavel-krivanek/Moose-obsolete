Class {
	#name : #FmxNGTSuper,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#subs => FMMany type: #FmxNGTSub opposite: #supers'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSuper class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TSuper super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTSuper >> subs [

	<generated>
	^ subs
]

{ #category : #accessing }
FmxNGTSuper >> subs: anObject [

	<generated>
	subs value: anObject

]

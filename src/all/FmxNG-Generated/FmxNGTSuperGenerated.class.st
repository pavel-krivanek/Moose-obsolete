Class {
	#name : #FmxNGTSuperGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#subs => FMMany type: #FmxNGTSub opposite: #supers'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTSuperGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSuperGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTSuperGenerated >> subs [

	^ subs
]

{ #category : #accessing }
FmxNGTSuperGenerated >> subs: anObject [

	subs value: anObject

]

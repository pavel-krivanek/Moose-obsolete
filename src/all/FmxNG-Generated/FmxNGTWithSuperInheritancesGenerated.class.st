Class {
	#name : #FmxNGTWithSuperInheritancesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#subInheritances => FMMany type: #FmxNGTSuperInheritance opposite: #superclass'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithSuperInheritancesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSuperInheritancesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithSuperInheritancesGenerated >> subInheritances [

	^ subInheritances
]

{ #category : #accessing }
FmxNGTWithSuperInheritancesGenerated >> subInheritances: anObject [

	subInheritances value: anObject

]

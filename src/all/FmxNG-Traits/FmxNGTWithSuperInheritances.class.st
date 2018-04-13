Class {
	#name : #FmxNGTWithSuperInheritances,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#subInheritances => FMMany type: #FmxNGTSuperInheritance opposite: #superclass'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithSuperInheritances class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSuperInheritances super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithSuperInheritances >> subInheritances [

	<generated>
	^ subInheritances
]

{ #category : #accessing }
FmxNGTWithSuperInheritances >> subInheritances: anObject [

	<generated>
	subInheritances value: anObject

]

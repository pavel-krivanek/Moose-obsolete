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

	<ignoreInTraitUsers>
	<MSEClass: #TWithSuperInheritances super: #FmxNGTWithSuperInheritancesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

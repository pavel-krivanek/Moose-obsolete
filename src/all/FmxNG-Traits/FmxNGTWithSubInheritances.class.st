Class {
	#name : #FmxNGTWithSubInheritances,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#superInheritances => FMMany type: #FmxNGTSubInheritance opposite: #subclass'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithSubInheritances class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSubInheritances super: #FmxNGTWithSubInheritancesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

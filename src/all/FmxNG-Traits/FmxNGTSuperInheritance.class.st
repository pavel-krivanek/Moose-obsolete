Class {
	#name : #FmxNGTSuperInheritance,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#superclass => FMOne type: #FmxNGTWithSuperInheritances opposite: #subInheritances'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSuperInheritance class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSuperInheritance super: #FmxNGTSuperInheritanceGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

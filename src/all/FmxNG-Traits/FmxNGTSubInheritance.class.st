Class {
	#name : #FmxNGTSubInheritance,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#subclass => FMOne type: #FmxNGTWithSubInheritances opposite: #superInheritances'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSubInheritance class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSubInheritance super: #FmxNGTSubInheritanceGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

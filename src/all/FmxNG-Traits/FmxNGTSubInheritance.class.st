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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TSubInheritance super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTSubInheritance >> subclass [

	<generated>
	<source>

	^ subclass
]

{ #category : #accessing }
FmxNGTSubInheritance >> subclass: anObject [

	<generated>
	subclass := anObject

]

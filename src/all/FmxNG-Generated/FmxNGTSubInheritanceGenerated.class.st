Class {
	#name : #FmxNGTSubInheritanceGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#subclass => FMOne type: #FmxNGTWithSubInheritances opposite: #superInheritances'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTSubInheritanceGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSubInheritanceGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTSubInheritanceGenerated >> subclass [

	^ subclass
]

{ #category : #accessing }
FmxNGTSubInheritanceGenerated >> subclass: anObject [

	subclass := anObject

]

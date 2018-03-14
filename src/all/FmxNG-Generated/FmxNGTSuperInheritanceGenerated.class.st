Class {
	#name : #FmxNGTSuperInheritanceGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#superclass => FMOne type: #FmxNGTWithSuperInheritances opposite: #subInheritances'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTSuperInheritanceGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSuperInheritanceGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTSuperInheritanceGenerated >> superclass [

	<target>

	^ superclass
]

{ #category : #accessing }
FmxNGTSuperInheritanceGenerated >> superclass: anObject [

	superclass := anObject

]

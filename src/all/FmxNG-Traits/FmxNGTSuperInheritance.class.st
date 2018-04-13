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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TSuperInheritance super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTSuperInheritance >> superclass [

	<generated>
	<target>

	^ superclass
]

{ #category : #accessing }
FmxNGTSuperInheritance >> superclass: anObject [

	<generated>
	superclass := anObject

]

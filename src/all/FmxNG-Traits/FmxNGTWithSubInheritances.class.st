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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSubInheritances super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithSubInheritances >> superInheritances [

	<generated>
	^ superInheritances
]

{ #category : #accessing }
FmxNGTWithSubInheritances >> superInheritances: anObject [

	<generated>
	superInheritances value: anObject

]

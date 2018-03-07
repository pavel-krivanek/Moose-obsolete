Class {
	#name : #FmxNGTWithSubInheritancesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#superInheritances => FMMany type: #FmxNGTSubInheritance opposite: #subclass'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithSubInheritancesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSubInheritancesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithSubInheritancesGenerated >> superInheritances [

	^ superInheritances
]

{ #category : #accessing }
FmxNGTWithSubInheritancesGenerated >> superInheritances: anObject [

	superInheritances value: anObject

]

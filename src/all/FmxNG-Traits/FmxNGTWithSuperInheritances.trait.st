Trait {
	#name : #FmxNGTWithSuperInheritances,
	#instVars : [
		'#subInheritances => FMMany type: #FmxNGTSuperInheritance opposite: #superclass'
	],
	#category : #'FmxNG-Traits-Inheritance'
}

{ #category : #meta }
FmxNGTWithSuperInheritances classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSuperInheritances super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithSuperInheritances classSide >> generatedSlotNames [
	<generated>
	^ #(subInheritances)
]

{ #category : #generator }
FmxNGTWithSuperInheritances classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithSuperInheritances >> subInheritances [

	<generated>
	^ subInheritances
]

{ #category : #accessing }
FmxNGTWithSuperInheritances >> subInheritances: anObject [

	<generated>
	subInheritances value: anObject

]

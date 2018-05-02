Trait {
	#name : #FmxNGTWithSubInheritances,
	#instVars : [
		'#superInheritances => FMMany type: #FmxNGTSubInheritance opposite: #subclass'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithSubInheritances classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSubInheritances super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithSubInheritances classSide >> generatedSlotNames [
	<generated>
	^ #(superInheritances)
]

{ #category : #generator }
FmxNGTWithSubInheritances classSide >> generatedTraitNames [
	<generated>
	^ #()
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

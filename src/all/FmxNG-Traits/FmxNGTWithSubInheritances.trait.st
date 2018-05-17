Trait {
	#name : #FmxNGTWithSubInheritances,
	#instVars : [
		'#superInheritances => FMMany type: #FmxNGTSubInheritance opposite: #subclass'
	],
	#category : #'FmxNG-Traits-Inheritance'
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
	<MSEComment: 'Superinheritance relationships, i.e. known superclasses of this type.'>
	^ superInheritances
]

{ #category : #accessing }
FmxNGTWithSubInheritances >> superInheritances: anObject [

	<generated>
	superInheritances value: anObject

]

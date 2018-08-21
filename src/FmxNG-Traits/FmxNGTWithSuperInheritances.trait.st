Trait {
	#name : #FmxNGTWithSuperInheritances,
	#instVars : [
		'#subInheritances => FMMany type: #FmxNGTSuperInheritance opposite: #superclass'
	],
	#category : #'FmxNG-Traits-Inheritance'
}

{ #category : #meta }
FmxNGTWithSuperInheritances classSide >> annotation [

	<MSEClass: #TWithSuperInheritances super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithSuperInheritances classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithSuperInheritances class>>#generatedSlotNames'.
	^ #(subInheritances)
]

{ #category : #generator }
FmxNGTWithSuperInheritances classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithSuperInheritances >> addSubInheritance: anInheritance [ 
	subInheritances add: anInheritance
]

{ #category : #metrics }
FmxNGTWithSuperInheritances >> numberOfSubclasses [
	<MSEProperty: #numberOfSubclasses type: #Number>
	<derived>
	<MSEComment: 'The number of subclasses of a class'>
	^ self lookUpPropertyNamed: #numberOfSubclasses computedAs: [ self subInheritances size ]
]

{ #category : #metrics }
FmxNGTWithSuperInheritances >> numberOfSubclasses: aNumber [

	self privateState propertyAt: #numberOfSubclasses put: aNumber
]

{ #category : #accessing }
FmxNGTWithSuperInheritances >> subInheritances [

	<generated>
	<MSEComment: 'Subinheritance relationships, i.e. known subclasses of this type.'>
	^ subInheritances
]

{ #category : #accessing }
FmxNGTWithSuperInheritances >> subInheritances: anObject [

	<generated>
	subInheritances value: anObject

]

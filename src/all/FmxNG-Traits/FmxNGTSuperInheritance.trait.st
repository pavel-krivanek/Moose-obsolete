Trait {
	#name : #FmxNGTSuperInheritance,
	#instVars : [
		'#superclass => FMOne type: #FmxNGTWithSuperInheritances opposite: #subInheritances'
	],
	#category : #'FmxNG-Traits-Inheritance'
}

{ #category : #meta }
FmxNGTSuperInheritance classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TSuperInheritance super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTSuperInheritance classSide >> generatedSlotNames [
	<generated>
	^ #(superclass)
]

{ #category : #generator }
FmxNGTSuperInheritance classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #testing }
FmxNGTSuperInheritance >> isInheritance [

	<generated>
	^ true
]

{ #category : #accessing }
FmxNGTSuperInheritance >> superclass [

	<generated>
	<MSEComment: 'Superclass linked to in this relationship. to-side of the association'>
	<target>

	^ superclass
]

{ #category : #accessing }
FmxNGTSuperInheritance >> superclass: anObject [

	<generated>
	superclass := anObject

]

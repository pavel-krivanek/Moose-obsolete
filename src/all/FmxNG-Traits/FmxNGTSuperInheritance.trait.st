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
	'FmxNGTSuperInheritance class>>#generatedSlotNames'.
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

{ #category : #accessing }
FmxNGTSuperInheritance >> to [
	^ self superclass 
]

{ #category : #accessing }
FmxNGTSuperInheritance >> to: aSuperclass [
	self superclass: aSuperclass
]

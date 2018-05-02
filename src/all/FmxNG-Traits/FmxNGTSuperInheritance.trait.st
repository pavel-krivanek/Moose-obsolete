Trait {
	#name : #FmxNGTSuperInheritance,
	#instVars : [
		'#superclass => FMOne type: #FmxNGTWithSuperInheritances opposite: #subInheritances'
	],
	#category : #'FmxNG-Traits-Traits'
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

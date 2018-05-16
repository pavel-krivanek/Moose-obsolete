Trait {
	#name : #FmxNGTSubInheritance,
	#instVars : [
		'#subclass => FMOne type: #FmxNGTWithSubInheritances opposite: #superInheritances'
	],
	#category : #'FmxNG-Traits-Inheritance'
}

{ #category : #meta }
FmxNGTSubInheritance classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TSubInheritance super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTSubInheritance classSide >> generatedSlotNames [
	<generated>
	^ #(subclass)
]

{ #category : #generator }
FmxNGTSubInheritance classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #testing }
FmxNGTSubInheritance >> isInheritance [

	<generated>
	^ true
]

{ #category : #accessing }
FmxNGTSubInheritance >> subclass [

	<generated>
	<source>

	^ subclass
]

{ #category : #accessing }
FmxNGTSubInheritance >> subclass: anObject [

	<generated>
	subclass := anObject

]

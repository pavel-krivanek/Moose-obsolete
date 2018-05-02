Trait {
	#name : #FmxNGTSubInheritance,
	#instVars : [
		'#subclass => FMOne type: #FmxNGTWithSubInheritances opposite: #superInheritances'
	],
	#category : #'FmxNG-Traits-Traits'
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

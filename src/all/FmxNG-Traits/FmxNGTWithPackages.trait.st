Trait {
	#name : #FmxNGTWithPackages,
	#instVars : [
		'#packages => FMMany type: #FmxNGTPackage opposite: #packageOwner'
	],
	#category : #'FmxNG-Traits-Package'
}

{ #category : #meta }
FmxNGTWithPackages classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithPackages super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithPackages classSide >> generatedSlotNames [
	<generated>
	^ #(packages)
]

{ #category : #generator }
FmxNGTWithPackages classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithPackages >> packages [

	<generated>
	^ packages
]

{ #category : #accessing }
FmxNGTWithPackages >> packages: anObject [

	<generated>
	packages value: anObject

]

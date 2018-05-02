"
FAMIXPackage represents a package in the source language, meaning that it provides a means to group entities without any baring on lexical scoping. 

Java extractors map Java packages to FAMIXNamespaces. They can also mirror the same information in terms of FAMIXPackage instances.
"
Trait {
	#name : #FmxNGTPackage,
	#instVars : [
		'#childEntities => FMMany type: #FmxNGTPackageable opposite: #parentPackage',
		'#packageOwner => FMOne type: #FmxNGTWithPackages opposite: #packages'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTPackage classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TPackage super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTPackage classSide >> generatedSlotNames [
	<generated>
	^ #(childEntities packageOwner)
]

{ #category : #generator }
FmxNGTPackage classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTPackage >> childEntities [

	<generated>
	^ childEntities
]

{ #category : #accessing }
FmxNGTPackage >> childEntities: anObject [

	<generated>
	childEntities value: anObject

]

{ #category : #accessing }
FmxNGTPackage >> packageOwner [

	<generated>
	^ packageOwner
]

{ #category : #accessing }
FmxNGTPackage >> packageOwner: anObject [

	<generated>
	packageOwner := anObject

]

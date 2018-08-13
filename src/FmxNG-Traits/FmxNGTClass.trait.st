"
FAMIXClass represents an entity which can build new instances. A FAMIXClass is a FAMIXType, therefore it is involved in super/sub types relationships (depending on the language) and it holds attributes, methods.

FAMIX does not model explicitly interfaces, but a FAMIXClass can represent a Java interface by setting the isInterface property.

A class is typically scoped in a namespace. To model nested or anonymous classes, extractors can set the container of classes to classes or methods, respectively.
"
Trait {
	#name : #FmxNGTClass,
	#category : #'FmxNG-Traits-Class'
}

{ #category : #meta }
FmxNGTClass classSide >> annotation [

	<MSEClass: #TClass super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTClass classSide >> generatedSlotNames [
	<generated>
	'FmxNGTClass class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTClass classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #testing }
FmxNGTClass >> isClass [

	<generated>
	^ true
]

{ #category : #testing }
FmxNGTClass >> isInterface [

	^ false
]

{ #category : #testing }
FmxNGTClass >> isTestCase [

	^ false
]

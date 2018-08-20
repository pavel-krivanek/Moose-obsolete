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

	<MSEProperty: #isInterface type: #Boolean>
	<MSEComment: 'This is a boolean flag used to distinguish between classes with implementation and interfaces'>

	^ self privateState attributeAt: #isInterface ifAbsent: [ false ]
]

{ #category : #testing }
FmxNGTClass >> isInterface: aBoolean [

	^ self privateState attributeAt: #isInterface put: true
]

{ #category : #testing }
FmxNGTClass >> isTestCase [

	<MSEProperty: #isTestCase type: #Boolean>
	<MSEComment: 'True if the method is considered as a test'>

	^ self privateState attributeAt: #isTestCase ifAbsent: [ false ]
]

{ #category : #testing }
FmxNGTClass >> isTestCase: aBoolean [

	^ self privateState attributeAt: #isTestCase put: true
]

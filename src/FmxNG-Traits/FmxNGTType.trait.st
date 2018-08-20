"
FAMIXType is a generic class representing a type. It has several specializations for specific kinds of types, the typical one being FAMIXClass.
A type is defined in a container (instance of FAMIXContainer). 
The container is typically a namespace (instance of FAMIXNamespace), but may also be a class (in the case of nested classes), or a method (in the case of anonymous classes).

A type can have multiple subtypes or supertypes. These are modelled by means of FAMIXInheritance instances.
"
Trait {
	#name : #FmxNGTType,
	#instVars : [
		'#typeContainer => FMOne type: #FmxNGTWithTypes opposite: #types'
	],
	#category : #'FmxNG-Traits-Type'
}

{ #category : #meta }
FmxNGTType classSide >> annotation [

	<MSEClass: #TType super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTType classSide >> generatedSlotNames [
	<generated>
	'FmxNGTType class>>#generatedSlotNames'.
	^ #(typeContainer)
]

{ #category : #generator }
FmxNGTType classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGTType >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGTType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on (inherit, staticly access, or use some methods of) the receiver'>
	^ (self queryAllIncoming atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #testing }
FmxNGTType >> isType [

	<generated>
	^ true
]

{ #category : #testing }
FmxNGTType >> realType [
	"All types except the alias ones are real"
	^ self 
]

{ #category : #accessing }
FmxNGTType >> typeContainer [

	<generated>
	<MSEComment: 'Container entity to which this type belongs to. Container is a namespace, not a package (Smalltalk).'>
	<container>

	^ typeContainer
]

{ #category : #accessing }
FmxNGTType >> typeContainer: anObject [

	typeContainer := anObject.
	self resetMooseName.

]

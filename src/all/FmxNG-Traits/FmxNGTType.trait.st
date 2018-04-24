"
FAMIXType is a generic class representing a type. It has several specializations for specific kinds of types, the typical one being FAMIXClass.
A type is defined in a container (instance of FAMIXContainer). 
The container is typically a namespace (instance of FAMIXNamespace), but may also be a class (in the case of nested classes), or a method (in the case of anonymous classes).

A type can have multiple subtypes or supertypes. These are modelled by means of FAMIXInheritance instances.
"
Trait {
	#name : #FmxNGTType,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTType classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TType super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTType classSide >> generatedSlotNames [
	<generated>
	^ #(typeContainer outgoingTraitUsages)
]

{ #category : #generator }
FmxNGTType classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTType >> outgoingTraitUsages [

	<generated>
	^ outgoingTraitUsages
]

{ #category : #accessing }
FmxNGTType >> outgoingTraitUsages: anObject [

	<generated>
	outgoingTraitUsages value: anObject

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

	<generated>
	typeContainer := anObject

]

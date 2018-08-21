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

{ #category : #metrics }
FmxNGTType >> fanIn [
	<MSEProperty: #fanIn type: #Number>
	<derived>
	<MSEComment: 'Number of client classes'>

	^self
		lookUpPropertyNamed: #fanIn
		computedAs: [self clientTypes size]
]

{ #category : #metrics }
FmxNGTType >> fanIn: aNumber [

	self privateState propertyAt: #fanIn put: aNumber
]

{ #category : #testing }
FmxNGTType >> isType [

	<generated>
	^ true
]

{ #category : #metrics }
FmxNGTType >> numberOfAccessesToForeignData [
	<MSEProperty: #numberOfAccessesToForeignData type: #Number>
	<derived>
	<MSEComment: 'Number of accesses to foreign data'>
	
	^self
		lookUpPropertyNamed: #numberOfAccessesToForeignData
		computedAs: [self notExistentMetricValue]
]

{ #category : #metrics }
FmxNGTType >> numberOfAccessesToForeignData: aNumber [

	self privateState propertyAt: #numberOfAccessesToForeignData put: aNumber
]

{ #category : #metrics }
FmxNGTType >> numberOfDuplicatedLinesOfCodeInternally [
	<MSEProperty: #numberOfDuplicatedLinesOfCodeInternally type: #Number>
	<derived>
	<MSEComment: 'The number of duplicated lines of code internally'>		

	^self
		lookUpPropertyNamed: #numberOfDuplicatedLinesOfCodeInternally
		computedAs: [self notExistentMetricValue]
]

{ #category : #metrics }
FmxNGTType >> numberOfDuplicatedLinesOfCodeInternally: aNumber [

	self privateState propertyAt: #numberOfDuplicatedLinesOfCodeInternally put: aNumber
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

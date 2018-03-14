Class {
	#name : #FmxNGTypeGenerated,
	#superclass : #FmxNGContainerEntity,
	#instVars : [
		'#typeContainer => FMOne type: #FmxNGTWithTypes opposite: #types',
		'#methods => FMMany type: #FmxNGTMethod opposite: #parentType',
		'#superInheritances => FMMany type: #FmxNGTSubInheritance opposite: #subclass',
		'#incomingReferences => FMMany type: #FmxNGTReference opposite: #target',
		'#attributes => FMMany type: #FmxNGTAttribute opposite: #parentType',
		'#subInheritances => FMMany type: #FmxNGTSuperInheritance opposite: #superclass',
		'#typeAliases => FMMany type: #FmxNGTTypeAlias opposite: #aliasedType',
		'#argumentsInParameterizedTypes => FMOne type: #FmxNGTWithParameterizedTypeUsers opposite: #arguments',
		'#structuresWithDeclaredType => FMMany type: #FmxNGTTypedStructure opposite: #declaredType'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGTypeGenerated class >> annotation [

	<MSEClass: #TypeGenerated super: #FmxNGContainerEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGTypeGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGTypeGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTParameterizedTypeUser. FmxNGTReferenceable. FmxNGTType. FmxNGTWithAttributes. FmxNGTWithMethods. FmxNGTWithSubInheritances. FmxNGTWithSuperInheritances. FmxNGTWithTypeAliases. FmxNGTWithTypedStructures}
]

{ #category : #'_fromTrait_FmxNGTParameterizedTypeUserGenerated' }
FmxNGTypeGenerated >> argumentsInParameterizedTypes [

	^ argumentsInParameterizedTypes
]

{ #category : #'_fromTrait_FmxNGTParameterizedTypeUserGenerated' }
FmxNGTypeGenerated >> argumentsInParameterizedTypes: anObject [

	argumentsInParameterizedTypes := anObject

]

{ #category : #'_fromTrait_FmxNGTWithAttributesGenerated' }
FmxNGTypeGenerated >> attributes [

	<MSEComment: 'List of attributes declared by this type.'>
	^ attributes
]

{ #category : #'_fromTrait_FmxNGTWithAttributesGenerated' }
FmxNGTypeGenerated >> attributes: anObject [

	attributes value: anObject

]

{ #category : #'_fromTrait_FmxNGTReferenceableGenerated' }
FmxNGTypeGenerated >> incomingReferences [

	<MSEComment: 'References to this entity by other entities.'>
	^ incomingReferences
]

{ #category : #'_fromTrait_FmxNGTReferenceableGenerated' }
FmxNGTypeGenerated >> incomingReferences: anObject [

	incomingReferences value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithMethodsGenerated' }
FmxNGTypeGenerated >> methods [

	<MSEComment: 'Methods declared by this type.'>
	^ methods
]

{ #category : #'_fromTrait_FmxNGTWithMethodsGenerated' }
FmxNGTypeGenerated >> methods: anObject [

	methods value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithTypedStructuresGenerated' }
FmxNGTypeGenerated >> structuresWithDeclaredType [

	^ structuresWithDeclaredType
]

{ #category : #'_fromTrait_FmxNGTWithTypedStructuresGenerated' }
FmxNGTypeGenerated >> structuresWithDeclaredType: anObject [

	structuresWithDeclaredType value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithSuperInheritancesGenerated' }
FmxNGTypeGenerated >> subInheritances [

	^ subInheritances
]

{ #category : #'_fromTrait_FmxNGTWithSuperInheritancesGenerated' }
FmxNGTypeGenerated >> subInheritances: anObject [

	subInheritances value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithSubInheritancesGenerated' }
FmxNGTypeGenerated >> superInheritances [

	^ superInheritances
]

{ #category : #'_fromTrait_FmxNGTWithSubInheritancesGenerated' }
FmxNGTypeGenerated >> superInheritances: anObject [

	superInheritances value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithTypeAliasesGenerated' }
FmxNGTypeGenerated >> typeAliases [

	<MSEComment: 'Aliases'>
	^ typeAliases
]

{ #category : #'_fromTrait_FmxNGTWithTypeAliasesGenerated' }
FmxNGTypeGenerated >> typeAliases: anObject [

	typeAliases value: anObject

]

{ #category : #'_fromTrait_FmxNGTTypeGenerated' }
FmxNGTypeGenerated >> typeContainer [

	<MSEComment: 'Container entity to which this type belongs to. Container is a namespace, not a package (Smalltalk).'>
	<container>

	^ typeContainer
]

{ #category : #'_fromTrait_FmxNGTTypeGenerated' }
FmxNGTypeGenerated >> typeContainer: anObject [

	typeContainer := anObject

]

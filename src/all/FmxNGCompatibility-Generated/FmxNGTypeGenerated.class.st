Class {
	#name : #FmxNGTypeGenerated,
	#superclass : #FmxNGNamedEntity,
	#instVars : [
		'#typeContainer => FMOne type: #FmxNGTWithTypes opposite: #types',
		'#superInheritances => FMMany type: #FmxNGTSubInheritance opposite: #subclass',
		'#subInheritances => FMMany type: #FmxNGTSuperInheritance opposite: #superclass',
		'#typeAliases => FMMany type: #FmxNGTTypeAlias opposite: #aliasedType',
		'#attributes => FMMany type: #FmxNGTAttribute opposite: #parentType',
		'#argumentsInParameterizedTypes => FMOne type: #FmxNGTWithParameterizedTypeUsers opposite: #arguments',
		'#incomingReferences => FMMany type: #FmxNGTReference opposite: #target',
		'#structuresWithDeclaredType => FMMany type: #FmxNGTTypedStructure opposite: #declaredType',
		'#methods => FMMany type: #FmxNGTMethod opposite: #parentType'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGTypeGenerated class >> annotation [

	<MSEClass: #TypeGenerated super: #FmxNGNamedEntity>
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

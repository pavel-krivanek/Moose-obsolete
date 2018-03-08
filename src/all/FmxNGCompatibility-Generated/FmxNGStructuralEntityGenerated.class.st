Class {
	#name : #FmxNGStructuralEntityGenerated,
	#superclass : #FmxNGLeafEntity,
	#instVars : [
		'#declaredType => FMOne type: #FmxNGTWithTypedStructures opposite: #structuresWithDeclaredType',
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer',
		'#incomingAccesses => FMMany type: #FmxNGTAccess opposite: #variable'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGStructuralEntityGenerated class >> annotation [

	<MSEClass: #StructuralEntityGenerated super: #FmxNGLeafEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGStructuralEntityGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGStructuralEntityGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTAccessible. FmxNGTTypedStructure. FmxNGTWithDereferencedInvocations}
]

{ #category : #'_fromTrait_FmxNGTTypedStructureGenerated' }
FmxNGStructuralEntityGenerated >> declaredType [

	^ declaredType
]

{ #category : #'_fromTrait_FmxNGTTypedStructureGenerated' }
FmxNGStructuralEntityGenerated >> declaredType: anObject [

	declaredType := anObject

]

{ #category : #'_fromTrait_FmxNGTWithDereferencedInvocationsGenerated' }
FmxNGStructuralEntityGenerated >> dereferencedInvocations [

	<MSEComment: 'List of invocations performed on BehaviouralEntities referenced by this entity'>
	^ dereferencedInvocations
]

{ #category : #'_fromTrait_FmxNGTWithDereferencedInvocationsGenerated' }
FmxNGStructuralEntityGenerated >> dereferencedInvocations: anObject [

	dereferencedInvocations value: anObject

]

{ #category : #'_fromTrait_FmxNGTAccessibleGenerated' }
FmxNGStructuralEntityGenerated >> incomingAccesses [

	<MSEComment: 'All Famix accesses pointing to this structural entity'>
	^ incomingAccesses
]

{ #category : #'_fromTrait_FmxNGTAccessibleGenerated' }
FmxNGStructuralEntityGenerated >> incomingAccesses: anObject [

	incomingAccesses value: anObject

]

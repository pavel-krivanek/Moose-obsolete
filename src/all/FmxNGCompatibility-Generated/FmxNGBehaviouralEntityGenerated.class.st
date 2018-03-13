Class {
	#name : #FmxNGBehaviouralEntityGenerated,
	#superclass : #FmxNGContainerEntity,
	#instVars : [
		'#outgoingInvocations => FMMany type: #FmxNGTInvocation opposite: #sender',
		'#implicitVariables => FMMany type: #FmxNGTImplicitVariable opposite: #parentBehaviouralEntity',
		'#incomingInvocations => FMMany type: #FmxNGTInvocation opposite: #candidates',
		'#signature',
		'#parameters => FMMany type: #FmxNGTParameter opposite: #parentBehaviouralEntity',
		'#accesses => FMMany type: #FmxNGTAccess opposite: #accessor',
		'#localVariables => FMMany type: #FmxNGTLocalVariable opposite: #parentBehaviouralEntity',
		'#outgoingReferences => FMMany type: #FmxNGTReference opposite: #source',
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer',
		'#declaredType => FMOne type: #FmxNGTWithTypedStructures opposite: #structuresWithDeclaredType'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGBehaviouralEntityGenerated class >> annotation [

	<MSEClass: #BehaviouralEntityGenerated super: #FmxNGContainerEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGBehaviouralEntityGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGBehaviouralEntityGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTInvocable. FmxNGTTypedStructure. FmxNGTWithAccesses. FmxNGTWithDereferencedInvocations. FmxNGTWithImplicitVariables. FmxNGTWithInvocations. FmxNGTWithLocalVariables. FmxNGTWithParameters. FmxNGTWithReferences. FmxNGTWithSignature}
]

{ #category : #'_fromTrait_FmxNGTWithAccessesGenerated' }
FmxNGBehaviouralEntityGenerated >> accesses [

	<MSEComment: 'Accesses to variables made by this behaviour.'>
	^ accesses
]

{ #category : #'_fromTrait_FmxNGTWithAccessesGenerated' }
FmxNGBehaviouralEntityGenerated >> accesses: anObject [

	accesses value: anObject

]

{ #category : #'_fromTrait_FmxNGTTypedStructureGenerated' }
FmxNGBehaviouralEntityGenerated >> declaredType [

	^ declaredType
]

{ #category : #'_fromTrait_FmxNGTTypedStructureGenerated' }
FmxNGBehaviouralEntityGenerated >> declaredType: anObject [

	declaredType := anObject

]

{ #category : #'_fromTrait_FmxNGTWithDereferencedInvocationsGenerated' }
FmxNGBehaviouralEntityGenerated >> dereferencedInvocations [

	<MSEComment: 'List of invocations performed on BehaviouralEntities referenced by this entity'>
	^ dereferencedInvocations
]

{ #category : #'_fromTrait_FmxNGTWithDereferencedInvocationsGenerated' }
FmxNGBehaviouralEntityGenerated >> dereferencedInvocations: anObject [

	dereferencedInvocations value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithImplicitVariablesGenerated' }
FmxNGBehaviouralEntityGenerated >> implicitVariables [

	<MSEComment: 'Implicit variables used locally by this behaviour.'>
	^ implicitVariables
]

{ #category : #'_fromTrait_FmxNGTWithImplicitVariablesGenerated' }
FmxNGBehaviouralEntityGenerated >> implicitVariables: anObject [

	implicitVariables value: anObject

]

{ #category : #'_fromTrait_FmxNGTInvocableGenerated' }
FmxNGBehaviouralEntityGenerated >> incomingInvocations [

	^ incomingInvocations
]

{ #category : #'_fromTrait_FmxNGTInvocableGenerated' }
FmxNGBehaviouralEntityGenerated >> incomingInvocations: anObject [

	incomingInvocations value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithLocalVariablesGenerated' }
FmxNGBehaviouralEntityGenerated >> localVariables [

	<MSEComment: 'Variables locally defined by this behaviour.'>
	^ localVariables
]

{ #category : #'_fromTrait_FmxNGTWithLocalVariablesGenerated' }
FmxNGBehaviouralEntityGenerated >> localVariables: anObject [

	localVariables value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithInvocationsGenerated' }
FmxNGBehaviouralEntityGenerated >> outgoingInvocations [

	<MSEComment: 'Outgoing invocations sent by this behaviour.'>
	^ outgoingInvocations
]

{ #category : #'_fromTrait_FmxNGTWithInvocationsGenerated' }
FmxNGBehaviouralEntityGenerated >> outgoingInvocations: anObject [

	outgoingInvocations value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithReferencesGenerated' }
FmxNGBehaviouralEntityGenerated >> outgoingReferences [

	<MSEComment: 'References from this entity to other entities.'>
	^ outgoingReferences
]

{ #category : #'_fromTrait_FmxNGTWithReferencesGenerated' }
FmxNGBehaviouralEntityGenerated >> outgoingReferences: anObject [

	outgoingReferences value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithParametersGenerated' }
FmxNGBehaviouralEntityGenerated >> parameters [

	<MSEComment: 'List of formal parameters declared by this behaviour.'>
	^ parameters
]

{ #category : #'_fromTrait_FmxNGTWithParametersGenerated' }
FmxNGBehaviouralEntityGenerated >> parameters: anObject [

	parameters value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithSignatureGenerated' }
FmxNGBehaviouralEntityGenerated >> signature [

	<MSEProperty: #signature type: #String>
	<MSEComment: 'Signature of the message being sent'>
	^ signature
]

{ #category : #'_fromTrait_FmxNGTWithSignatureGenerated' }
FmxNGBehaviouralEntityGenerated >> signature: anObject [

	signature := anObject

]

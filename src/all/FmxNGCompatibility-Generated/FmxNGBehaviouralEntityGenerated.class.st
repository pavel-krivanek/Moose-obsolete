Class {
	#name : #FmxNGBehaviouralEntityGenerated,
	#superclass : #FmxNGContainerEntity,
	#instVars : [
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer',
		'#outgoingInvocations => FMMany type: #FmxNGTInvocation opposite: #sender',
		'#localVariables => FMMany type: #FmxNGTLocalVariable opposite: #parentBehaviouralEntity',
		'#parameters => FMMany type: #FmxNGTParameter opposite: #parentBehaviouralEntity',
		'#incomingInvocations => FMOne type: #FmxNGTInvocation opposite: #candidates',
		'#outgoingReferences => FMMany type: #FmxNGTReference opposite: #source',
		'#signature',
		'#declaredType => FMOne type: #FmxNGTWithTypedStructures opposite: #structuresWithDeclaredType',
		'#accesses => FMMany type: #FmxNGTAccess opposite: #accessor',
		'#implicitVariables => FMMany type: #FmxNGTImplicitVariable opposite: #parentBehaviouralEntity'
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

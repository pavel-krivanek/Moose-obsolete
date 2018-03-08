Class {
	#name : #FmxNGStructuralEntityGenerated,
	#superclass : #FmxNGLeafEntity,
	#instVars : [
		'#incomingAccesses => FMMany type: #FmxNGTAccess opposite: #variable',
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer',
		'#declaredType => FMOne type: #FmxNGTWithTypedStructures opposite: #structuresWithDeclaredType'
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

Trait {
	#name : #FmxNGTClassWithInvocationsGlue,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTClassWithInvocationsGlue classSide >> annotation [

	<MSEClass: #TClassWithInvocationsGlue super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTClassWithInvocationsGlue classSide >> generatedSlotNames [
	<generated>
	'FmxNGTClassWithInvocationsGlue class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTClassWithInvocationsGlue classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'Famix-Implementation' }
FmxNGTClassWithInvocationsGlue >> outgoingInvocationsGroup [
	<navigation: 'Outgoing invocations'>
	^ self privateState cacheAt:
		#outgoingInvocationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self outgoingInvocations
				withDescription: 'Outgoing invocations from ' , self mooseName]
]

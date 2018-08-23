Trait {
	#name : #FmxNGTContainingWithInvocationsGlue,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTContainingWithInvocationsGlue classSide >> annotation [

	<MSEClass: #TContainingWithInvocationsGlue super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTContainingWithInvocationsGlue classSide >> generatedSlotNames [
	<generated>
	'FmxNGTContainingWithInvocationsGlue class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTContainingWithInvocationsGlue classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #metrics }
FmxNGTContainingWithInvocationsGlue >> outgoingInvocations [

	| withInvocations |
	withInvocations :=  self children select: [ :child | child usesTrait: FmxNGTWithInvocations].
	^ withInvocations flatCollect: [ :each | each outgoingInvocations ]
]

{ #category : #metrics }
FmxNGTContainingWithInvocationsGlue >> outgoingInvocationsGroup [
	<navigation: 'Outgoing invocations'>
	^ self privateState cacheAt:
		#outgoingInvocationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self outgoingInvocations
				withDescription: 'Outgoing invocations from ' , self mooseName]
]

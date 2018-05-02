Trait {
	#name : #FmxNGTWithDereferencedInvocations,
	#instVars : [
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithDereferencedInvocations classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithDereferencedInvocations super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithDereferencedInvocations classSide >> generatedSlotNames [
	<generated>
	^ #(dereferencedInvocations)
]

{ #category : #generator }
FmxNGTWithDereferencedInvocations classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithDereferencedInvocations >> dereferencedInvocations [

	<generated>
	<MSEComment: 'List of invocations performed on BehaviouralEntities referenced by this entity'>
	^ dereferencedInvocations
]

{ #category : #accessing }
FmxNGTWithDereferencedInvocations >> dereferencedInvocations: anObject [

	<generated>
	dereferencedInvocations value: anObject

]

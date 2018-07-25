Trait {
	#name : #FmxNGTWithDereferencedInvocations,
	#instVars : [
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer'
	],
	#category : #'FmxNG-Traits-DereferencedInvocation'
}

{ #category : #meta }
FmxNGTWithDereferencedInvocations classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithDereferencedInvocations super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithDereferencedInvocations classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithDereferencedInvocations class>>#generatedSlotNames'.
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

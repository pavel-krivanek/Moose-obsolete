"
Represents an invocation which function is contained in a pointer.

The function itself is typically unknown (referenced by the pointer).

It has a referencer which is the pointer variable
"
Trait {
	#name : #FmxNGTDereferencedInvocation,
	#instVars : [
		'#referencer => FMOne type: #FmxNGTWithDereferencedInvocations opposite: #dereferencedInvocations'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTDereferencedInvocation classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TDereferencedInvocation super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTDereferencedInvocation classSide >> generatedSlotNames [
	<generated>
	^ #(referencer)
]

{ #category : #generator }
FmxNGTDereferencedInvocation classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTDereferencedInvocation >> referencer [

	<generated>
	<MSEComment: 'Structural entity that references the BehaviouralEntity invoked'>
	^ referencer
]

{ #category : #accessing }
FmxNGTDereferencedInvocation >> referencer: anObject [

	<generated>
	referencer := anObject

]

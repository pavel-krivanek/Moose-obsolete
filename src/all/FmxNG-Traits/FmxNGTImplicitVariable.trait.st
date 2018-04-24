"
FAMIXImplicitVariable represents a variable defined by the compiler in a context, such as self, super, thisContext.
"
Trait {
	#name : #FmxNGTImplicitVariable,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTImplicitVariable classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TImplicitVariable super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTImplicitVariable classSide >> generatedSlotNames [
	<generated>
	^ #(parentBehaviouralEntity)
]

{ #category : #generator }
FmxNGTImplicitVariable classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTImplicitVariable >> parentBehaviouralEntity [

	<generated>
	<MSEComment: 'The behaviour containing this implicit variable. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTImplicitVariable >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject

]

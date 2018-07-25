"
FAMIXImplicitVariable represents a variable defined by the compiler in a context, such as self, super, thisContext.
"
Trait {
	#name : #FmxNGTImplicitVariable,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithImplicitVariables opposite: #implicitVariables'
	],
	#category : #'FmxNG-Traits-ImplicitVariable'
}

{ #category : #meta }
FmxNGTImplicitVariable classSide >> annotation [

	<MSEClass: #TImplicitVariable super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTImplicitVariable classSide >> generatedSlotNames [
	<generated>
	'FmxNGTImplicitVariable class>>#generatedSlotNames'.
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

	parentBehaviouralEntity := anObject.
	self resetMooseName.
	

]

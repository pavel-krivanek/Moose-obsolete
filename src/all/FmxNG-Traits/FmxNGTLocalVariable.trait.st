"
FAMIXLocalVariable represents a local variable in the scope of a behavioural entity.
"
Trait {
	#name : #FmxNGTLocalVariable,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithLocalVariables opposite: #localVariables'
	],
	#category : #'FmxNG-Traits-LocalVariable'
}

{ #category : #meta }
FmxNGTLocalVariable classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TLocalVariable super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTLocalVariable classSide >> generatedSlotNames [
	<generated>
	'FmxNGTLocalVariable class>>#generatedSlotNames'.
	^ #(parentBehaviouralEntity)
]

{ #category : #generator }
FmxNGTLocalVariable classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTLocalVariable >> parentBehaviouralEntity [

	<generated>
	<MSEComment: 'Behavioural entity declaring this local variable. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTLocalVariable >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject.
	self resetMooseName.
	

]

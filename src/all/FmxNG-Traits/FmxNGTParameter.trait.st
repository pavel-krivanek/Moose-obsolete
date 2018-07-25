"
FAMIXParameter represents one parameter in a method declaration.
"
Trait {
	#name : #FmxNGTParameter,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithParameters opposite: #parameters'
	],
	#category : #'FmxNG-Traits-Parameter'
}

{ #category : #meta }
FmxNGTParameter classSide >> annotation [

	<MSEClass: #TParameter super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTParameter classSide >> generatedSlotNames [
	<generated>
	'FmxNGTParameter class>>#generatedSlotNames'.
	^ #(parentBehaviouralEntity)
]

{ #category : #generator }
FmxNGTParameter classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTParameter >> parentBehaviouralEntity [

	<generated>
	<MSEComment: 'Behavioural entity containing this parameter. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTParameter >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject.
	self resetMooseName.

]

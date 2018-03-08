Class {
	#name : #FmxNGLocalVariableGenerated,
	#superclass : #FmxNGStructuralEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithLocalVariables opposite: #localVariables'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGLocalVariableGenerated class >> annotation [

	<MSEClass: #LocalVariableGenerated super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGLocalVariableGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGLocalVariableGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTLocalVariable}
]

{ #category : #'_fromTrait_FmxNGTLocalVariableGenerated' }
FmxNGLocalVariableGenerated >> parentBehaviouralEntity [

	<MSEComment: 'Behavioural entity declaring this local variable. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #'_fromTrait_FmxNGTLocalVariableGenerated' }
FmxNGLocalVariableGenerated >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject

]

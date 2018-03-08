Class {
	#name : #FmxNGImplicitVariableGenerated,
	#superclass : #FmxNGStructuralEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithImplicitVariables opposite: #implicitVariables'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGImplicitVariableGenerated class >> annotation [

	<MSEClass: #ImplicitVariableGenerated super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGImplicitVariableGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGImplicitVariableGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTImplicitVariable}
]

{ #category : #'_fromTrait_FmxNGTImplicitVariableGenerated' }
FmxNGImplicitVariableGenerated >> parentBehaviouralEntity [

	<MSEComment: 'The behaviour containing this implicit variable. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #'_fromTrait_FmxNGTImplicitVariableGenerated' }
FmxNGImplicitVariableGenerated >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject

]

Class {
	#name : #FmxNGParameterGenerated,
	#superclass : #FmxNGStructuralEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithParameters opposite: #parameters'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGParameterGenerated class >> annotation [

	<MSEClass: #ParameterGenerated super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGParameterGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGParameterGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTParameter}
]

{ #category : #'_fromTrait_FmxNGTParameterGenerated' }
FmxNGParameterGenerated >> parentBehaviouralEntity [

	<MSEComment: 'Behavioural entity containing this parameter. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #'_fromTrait_FmxNGTParameterGenerated' }
FmxNGParameterGenerated >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject

]

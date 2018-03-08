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

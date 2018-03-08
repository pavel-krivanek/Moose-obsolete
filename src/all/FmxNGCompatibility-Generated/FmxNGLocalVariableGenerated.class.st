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

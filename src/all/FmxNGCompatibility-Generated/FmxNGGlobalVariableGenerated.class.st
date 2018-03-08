Class {
	#name : #FmxNGGlobalVariableGenerated,
	#superclass : #FmxNGStructuralEntity,
	#instVars : [
		'#parentScope => FMOne type: #FmxNGTGlobalVariableScope opposite: #globalVariables'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGGlobalVariableGenerated class >> annotation [

	<MSEClass: #GlobalVariableGenerated super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGGlobalVariableGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGGlobalVariableGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTGlobalVariable}
]

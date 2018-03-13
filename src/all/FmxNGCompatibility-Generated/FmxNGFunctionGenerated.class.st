Class {
	#name : #FmxNGFunctionGenerated,
	#superclass : #FmxNGBehaviouralEntity,
	#instVars : [
		'#functionOwner => FMOne type: #FmxNGTWithFunctions opposite: #functions'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGFunctionGenerated class >> annotation [

	<MSEClass: #FunctionGenerated super: #FmxNGBehaviouralEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGFunctionGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGFunctionGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTFunction}
]

{ #category : #'_fromTrait_FmxNGTFunctionGenerated' }
FmxNGFunctionGenerated >> functionOwner [

	<MSEComment: 'The container defining the function. The function is placed in a container, because certain languages can nest functions in functions.'>
	<container>

	^ functionOwner
]

{ #category : #'_fromTrait_FmxNGTFunctionGenerated' }
FmxNGFunctionGenerated >> functionOwner: anObject [

	functionOwner := anObject

]

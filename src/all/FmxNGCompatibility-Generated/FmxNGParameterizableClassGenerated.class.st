Class {
	#name : #FmxNGParameterizableClassGenerated,
	#superclass : #FmxNGClass,
	#instVars : [
		'#parameterizedTypes => FMMany type: #FmxNGTParameterizedType opposite: #parameterizableClass'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGParameterizableClassGenerated class >> annotation [

	<MSEClass: #ParameterizableClassGenerated super: #FmxNGClass>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGParameterizableClassGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGParameterizableClassGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTWithParameterizedTypes}
]

{ #category : #'_fromTrait_FmxNGTWithParameterizedTypesGenerated' }
FmxNGParameterizableClassGenerated >> parameterizedTypes [

	^ parameterizedTypes
]

{ #category : #'_fromTrait_FmxNGTWithParameterizedTypesGenerated' }
FmxNGParameterizableClassGenerated >> parameterizedTypes: anObject [

	parameterizedTypes value: anObject

]

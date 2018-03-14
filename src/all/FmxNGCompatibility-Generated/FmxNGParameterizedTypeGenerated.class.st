Class {
	#name : #FmxNGParameterizedTypeGenerated,
	#superclass : #FmxNGType,
	#instVars : [
		'#parameterizableClass => FMOne type: #FmxNGTWithParameterizedTypes opposite: #parameterizedTypes',
		'#arguments => FMMany type: #FmxNGTParameterizedTypeUser opposite: #argumentsInParameterizedTypes'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGParameterizedTypeGenerated class >> annotation [

	<MSEClass: #ParameterizedTypeGenerated super: #FmxNGType>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGParameterizedTypeGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGParameterizedTypeGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTParameterizedType. FmxNGTWithParameterizedTypeUsers}
]

{ #category : #'_fromTrait_FmxNGTWithParameterizedTypeUsersGenerated' }
FmxNGParameterizedTypeGenerated >> arguments [

	^ arguments
]

{ #category : #'_fromTrait_FmxNGTWithParameterizedTypeUsersGenerated' }
FmxNGParameterizedTypeGenerated >> arguments: anObject [

	arguments value: anObject

]

{ #category : #'_fromTrait_FmxNGTParameterizedTypeGenerated' }
FmxNGParameterizedTypeGenerated >> parameterizableClass [

	<MSEComment: 'Base type of this parameterized type.'>
	^ parameterizableClass
]

{ #category : #'_fromTrait_FmxNGTParameterizedTypeGenerated' }
FmxNGParameterizedTypeGenerated >> parameterizableClass: anObject [

	parameterizableClass := anObject

]

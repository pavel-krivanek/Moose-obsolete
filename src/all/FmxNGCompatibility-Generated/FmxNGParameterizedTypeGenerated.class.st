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

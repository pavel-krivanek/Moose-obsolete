Class {
	#name : #FmxNGDereferencedInvocationGenerated,
	#superclass : #FmxNGInvocation,
	#instVars : [
		'#referencer => FMOne type: #FmxNGTWithDereferencedInvocations opposite: #dereferencedInvocations'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGDereferencedInvocationGenerated class >> annotation [

	<MSEClass: #DereferencedInvocationGenerated super: #FmxNGInvocation>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGDereferencedInvocationGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGDereferencedInvocationGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTDereferencedInvocation}
]

{ #category : #'_fromTrait_FmxNGTDereferencedInvocationGenerated' }
FmxNGDereferencedInvocationGenerated >> referencer [

	<MSEComment: 'Structural entity that references the BehaviouralEntity invoked'>
	^ referencer
]

{ #category : #'_fromTrait_FmxNGTDereferencedInvocationGenerated' }
FmxNGDereferencedInvocationGenerated >> referencer: anObject [

	referencer := anObject

]

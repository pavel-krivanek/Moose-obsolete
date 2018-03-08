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

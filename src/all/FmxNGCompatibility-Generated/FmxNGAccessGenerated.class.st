Class {
	#name : #FmxNGAccessGenerated,
	#superclass : #FmxNGAssociation,
	#instVars : [
		'#accessor => FMOne type: #FmxNGTWithAccesses opposite: #accesses',
		'#isWrite',
		'#variable => FMOne type: #FmxNGTAccessible opposite: #incomingAccesses'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGAccessGenerated class >> annotation [

	<MSEClass: #AccessGenerated super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGAccessGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGAccessGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTAccess}
]

{ #category : #'_fromTrait_FmxNGTAccess' }
FmxNGAccessGenerated >> isWrite [

	<MSEProperty: #isWrite type: #Boolean>
	<MSEComment: 'Write access'>
	^ isWrite ifNil: [ false ]
]

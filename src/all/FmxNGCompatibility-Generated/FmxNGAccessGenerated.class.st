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

{ #category : #'_fromTrait_FmxNGTAccessGenerated' }
FmxNGAccessGenerated >> accessor [

	<MSEComment: 'Behavioural entity making the access to the variable. from-side of the association'>
	<source>

	^ accessor
]

{ #category : #'_fromTrait_FmxNGTAccessGenerated' }
FmxNGAccessGenerated >> accessor: anObject [

	accessor := anObject

]

{ #category : #'_fromTrait_FmxNGTAccessGenerated' }
FmxNGAccessGenerated >> isWrite [

	<MSEProperty: #isWrite type: #Boolean>
	<MSEComment: 'Write access'>
	^ isWrite
]

{ #category : #'_fromTrait_FmxNGTAccessGenerated' }
FmxNGAccessGenerated >> isWrite: anObject [

	isWrite := anObject

]

{ #category : #'_fromTrait_FmxNGTAccessGenerated' }
FmxNGAccessGenerated >> variable [

	<MSEComment: 'Variable accessed. to-side of the association'>
	<target>

	^ variable
]

{ #category : #'_fromTrait_FmxNGTAccessGenerated' }
FmxNGAccessGenerated >> variable: anObject [

	variable := anObject

]

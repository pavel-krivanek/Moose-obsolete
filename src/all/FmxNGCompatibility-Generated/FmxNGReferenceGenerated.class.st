Class {
	#name : #FmxNGReferenceGenerated,
	#superclass : #FmxNGAssociation,
	#instVars : [
		'#target => FMOne type: #FmxNGTReferenceable opposite: #incomingReferences',
		'#source => FMOne type: #FmxNGTWithReferences opposite: #outgoingReferences'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGReferenceGenerated class >> annotation [

	<MSEClass: #ReferenceGenerated super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGReferenceGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGReferenceGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTReference}
]

{ #category : #'_fromTrait_FmxNGTReferenceGenerated' }
FmxNGReferenceGenerated >> source [

	<MSEComment: 'Source entity making the reference. from-side of the association'>
	<source>

	^ source
]

{ #category : #'_fromTrait_FmxNGTReferenceGenerated' }
FmxNGReferenceGenerated >> source: anObject [

	source := anObject

]

{ #category : #'_fromTrait_FmxNGTReferenceGenerated' }
FmxNGReferenceGenerated >> target [

	<MSEComment: 'Target entity referenced. to-side of the association'>
	<target>

	^ target
]

{ #category : #'_fromTrait_FmxNGTReferenceGenerated' }
FmxNGReferenceGenerated >> target: anObject [

	target := anObject

]

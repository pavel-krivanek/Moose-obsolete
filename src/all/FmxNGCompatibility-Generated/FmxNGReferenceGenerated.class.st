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

Class {
	#name : #FmxNGAssociationGenerated,
	#superclass : #FmxNGSourcedEntity,
	#instVars : [
		'#previous => FMOne type: #FmxNGTAssociation opposite: #next',
		'#next => FMOne type: #FmxNGTAssociation opposite: #previous'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGAssociationGenerated class >> annotation [

	<MSEClass: #AssociationGenerated super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGAssociationGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGAssociationGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTAssociation}
]

{ #category : #'_fromTrait_FmxNGTAssociationGenerated' }
FmxNGAssociationGenerated >> next [

	<MSEComment: 'Next association in an ordered collection of associations. Currently not supported by the Moose importer'>
	^ next
]

{ #category : #'_fromTrait_FmxNGTAssociationGenerated' }
FmxNGAssociationGenerated >> next: anObject [

	next := anObject

]

{ #category : #'_fromTrait_FmxNGTAssociationGenerated' }
FmxNGAssociationGenerated >> previous [

	<MSEComment: 'Previous association in an ordered collection of associations. Currently not supported by the Moose importer'>
	^ previous
]

{ #category : #'_fromTrait_FmxNGTAssociationGenerated' }
FmxNGAssociationGenerated >> previous: anObject [

	previous := anObject

]

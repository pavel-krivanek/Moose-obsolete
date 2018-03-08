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

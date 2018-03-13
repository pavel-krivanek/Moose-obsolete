Extension { #name : #MooseAbstractGroup }

{ #category : #'*FmxNGCompatibility-Entities' }
MooseAbstractGroup >> numberOfAssociations [
	<MSEProperty: #numberOfAssociations type: #Number>
	<MSEComment: 'The total number of associations'>
	^ (self allWithSubTypesOf: FmxNGAssociation) size
]

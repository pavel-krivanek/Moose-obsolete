accessing
numberOfAssociations
	<MSEProperty: #numberOfAssociations type: #Number>
	<MSEComment: 'The total number of associations'>
	^ (self allWithSubTypesOf: FAMIXAssociation) size
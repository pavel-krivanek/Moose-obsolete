accessing
numberOfEntities
	<MSEProperty: #numberOfEntities type: #Number>
	<MSEComment: 'The total number of entities (items that are not associations)'>
	^ self numberOfItems - self numberOfAssociations
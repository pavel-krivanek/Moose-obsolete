accessing
variables: anAssociationCollection
	variables := Dictionary new: anAssociationCollection size.
	anAssociationCollection associationsDo: [:each |
		variables
			at: each key
			put: each value].
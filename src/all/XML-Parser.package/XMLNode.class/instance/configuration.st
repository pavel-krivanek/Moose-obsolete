accessing
configuration
	^ self parent ifNotNil: [:node | node configuration]
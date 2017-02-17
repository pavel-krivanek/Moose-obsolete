as yet unclassified
variablesAccessedFromDifferentPackages
	^ self select: [:var | 
		((var incomingAccesses collect: #accessor)
			collect: #parentScope) asSet size > 1]
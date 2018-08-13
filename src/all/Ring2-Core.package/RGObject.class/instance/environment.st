accessing
environment
	
	<ignoreForMutations>

	^ self propertyNamed: #environment ifAbsent: [ self parent environment ].
adding
add: anObject after: aPreviousObject
	^ self
		add: anObject
		afterIndex:
			(collection
				indexOf: aPreviousObject
				ifAbsent: [-1])
adding
add: anObject before: aNextObject
	^ self
		add: anObject
		beforeIndex:
			(collection
				indexOf: aNextObject
				ifAbsent: [-1])
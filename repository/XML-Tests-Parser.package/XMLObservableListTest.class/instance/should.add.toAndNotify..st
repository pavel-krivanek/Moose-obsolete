assertions
should: aBlock add: anObject toAndNotify: aList
	self
		should: aBlock
		addAll: (Array with: anObject)
		toAndNotify: aList
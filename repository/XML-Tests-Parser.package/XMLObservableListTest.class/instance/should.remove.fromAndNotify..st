assertions
should: aBlock remove: anObject fromAndNotify: aList
	self
		should: aBlock
		removeAll: (Array with: anObject)
		fromAndNotify: aList
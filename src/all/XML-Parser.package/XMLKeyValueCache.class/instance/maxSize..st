accessing
maxSize: anInteger
	self critical: [| oldMaxSize |
		oldMaxSize := maxSize.
		(maxSize := anInteger) < oldMaxSize
			ifTrue: [self collection removeAll]]
testing
isSoleStep
	^ self hasParent not
		or: [self parent totalSteps = 1]
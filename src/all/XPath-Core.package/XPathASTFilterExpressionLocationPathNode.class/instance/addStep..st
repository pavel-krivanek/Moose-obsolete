adding
addStep: aStep
	^ self steps addLast: (self beParentOf: aStep)
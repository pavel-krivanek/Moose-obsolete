tests
testModelDoesNotContainDuplicateSharedVars

	self 	assert: 1
			equals: (self model entities select: [:e| e name = 'DependentsFields']) size
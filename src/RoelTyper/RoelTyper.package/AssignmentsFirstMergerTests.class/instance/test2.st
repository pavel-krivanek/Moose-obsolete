folding tests
test2
	self
		mergeInterfaceTypes: (OrderedCollection with: Array)
		assignmentTypes: (OrderedCollection with: Collection).
	self assert: mergeResult size = 1.
	self assert: (mergeResult includes: Collection)
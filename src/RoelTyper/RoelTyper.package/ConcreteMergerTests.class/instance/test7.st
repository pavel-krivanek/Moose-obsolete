folding tests
test7
	self
		mergeInterfaceTypes: OrderedCollection new
		assignmentTypes: (OrderedCollection with: Array).
	self assert: mergeResult size = 1.
	self assert: (mergeResult includes: Array)
folding tests
test1
	self
		mergeInterfaceTypes: (OrderedCollection with: Collection)
		assignmentTypes: (OrderedCollection with: Array).
	self assert: mergeResult size = 1.
	self assert: mergeResult first = Array
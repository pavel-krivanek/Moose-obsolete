folding tests
test5
	self
		mergeInterfaceTypes: OrderedCollection new
		assignmentTypes: (OrderedCollection with: Object).
	self assert: mergeResult size = 1.
	self assert: mergeResult first = Object
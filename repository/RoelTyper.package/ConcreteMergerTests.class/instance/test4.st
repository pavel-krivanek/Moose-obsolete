folding tests
test4
	self
		mergeInterfaceTypes: (OrderedCollection with: Object)
		assignmentTypes: OrderedCollection new.
	self assert: mergeResult size = 1.
	self assert: mergeResult first = Object
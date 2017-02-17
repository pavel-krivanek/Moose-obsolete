folding tests
test3
	self
		mergeInterfaceTypes: OrderedCollection new
		assignmentTypes: OrderedCollection new.
	self assert: mergeResult size = 1.
	self assert: mergeResult first = Object
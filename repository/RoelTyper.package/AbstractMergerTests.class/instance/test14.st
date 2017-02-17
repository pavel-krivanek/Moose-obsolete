folding tests
test14
	self
		mergeInterfaceTypes:
			(OrderedCollection
				with: SequenceableCollection
				with: Bag)
		assignmentTypes: (OrderedCollection with: Array).
	self assert: mergeResult size = 2.
	self assert: (mergeResult includes: SequenceableCollection).
	self assert: (mergeResult includes: Bag)
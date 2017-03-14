folding tests
test12
	"Dictionary and Array are in unrelated hierarchies -> keep both. Collection bites the dust because it is superclass."

	self
		mergeInterfaceTypes: (OrderedCollection with: Collection)
		assignmentTypes:
			(OrderedCollection
				with: Dictionary
				with: Array).
	self assert: mergeResult size = 2.
	self assert: (mergeResult includes: Dictionary).
	self assert: (mergeResult includes: Array)
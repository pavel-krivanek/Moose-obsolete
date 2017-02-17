folding tests
test13
	"Dictionary and Array are in unrelated hierarchies -> keep both. Collection bites the dust because it is superclass."

	self
		mergeInterfaceTypes: (OrderedCollection with: Collection)
		assignmentTypes:
			(OrderedCollection
				with: Array
				with: Dictionary).
	self assert: mergeResult size = 1.
	self assert: (mergeResult includes: Collection)
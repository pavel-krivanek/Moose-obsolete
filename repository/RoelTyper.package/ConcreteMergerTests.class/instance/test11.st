folding tests
test11
	"Dictionary and Array are in unrelated hierarchies -> keep both."

	self
		mergeInterfaceTypes: (OrderedCollection with: Dictionary)
		assignmentTypes:
			(OrderedCollection
				with: Collection
				with: Array).
	self assert: mergeResult size = 3.
	self assert: (mergeResult includes: Dictionary).
	self assert: (mergeResult includes: Array).
	self assert: (mergeResult includes: Collection)
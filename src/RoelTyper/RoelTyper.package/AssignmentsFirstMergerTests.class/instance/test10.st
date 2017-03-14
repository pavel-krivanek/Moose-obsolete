folding tests
test10
	"Dictionary and Array are in unrelated hierarchies -> keep both."

	self
		mergeInterfaceTypes: (OrderedCollection with: Dictionary)
		assignmentTypes:
			(OrderedCollection
				with: Array
				with: Collection).
	self assert: mergeResult size = 2.
	self assert: (mergeResult includes: Array).
	self assert: (mergeResult includes: Collection)
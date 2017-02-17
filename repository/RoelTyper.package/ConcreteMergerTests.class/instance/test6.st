folding tests
test6
	"Dictionary and Array are in unrelated hierarchies -> keep both"

	self
		mergeInterfaceTypes: (OrderedCollection with: Dictionary)
		assignmentTypes: (OrderedCollection with: Array).
	self assert: mergeResult size = 2.
	self assert: (mergeResult includes: Dictionary).
	self assert: (mergeResult includes: Array)
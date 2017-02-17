folding tests
test2
	"interface type Array is subclass of assignment type Collection
		-> folding keeps Array and loses Collection"

	self
		mergeInterfaceTypes: (OrderedCollection with: Array)
		assignmentTypes: (OrderedCollection with: Collection).
	self assert: mergeResult size = 2.
	self assert: (mergeResult includes: Array).
	self assert: (mergeResult includes: Collection)
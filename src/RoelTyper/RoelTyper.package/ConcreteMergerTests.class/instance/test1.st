folding tests
test1
	"assignment type Array is subtype of interface type Collection
		-> folding keeps Array and loses Collection"

	self
		mergeInterfaceTypes: (OrderedCollection with: Collection)
		assignmentTypes: (OrderedCollection with: Array).
	self assert: mergeResult size = 1.
	self assert: mergeResult first = Array
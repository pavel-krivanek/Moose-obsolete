operations - stubs
allParentsStub
	"The query allParents() gives all of the direct and indirect ancestors of a generalized Classifier."
	
	"{OCL} result = (parents()->union(parents()->collect(allParents())->asSet()))"
	
	self notYetImplemented

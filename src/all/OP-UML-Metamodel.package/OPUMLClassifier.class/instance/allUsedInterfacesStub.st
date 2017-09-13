operations - stubs
allUsedInterfacesStub
	"The Interfaces used by this Classifier and all of its generalizations"
	
	"{OCL} result = (directlyUsedInterfaces()->union(self.allParents()->collect(directlyUsedInterfaces()))->asSet())"
	
	self notYetImplemented

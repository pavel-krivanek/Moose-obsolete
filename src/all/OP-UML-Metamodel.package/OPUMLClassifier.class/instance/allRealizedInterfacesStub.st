operations - stubs
allRealizedInterfacesStub
	"The Interfaces realized by this Classifier and all of its generalizations"
	
	"{OCL} result = (directlyRealizedInterfaces()->union(self.allParents()->collect(directlyRealizedInterfaces()))->asSet())"
	
	self notYetImplemented

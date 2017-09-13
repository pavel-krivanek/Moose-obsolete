operations - stubs
allFeaturesStub
	"The query allFeatures() gives all of the Features in the namespace of the Classifier. In general, through mechanisms such as inheritance, this will be a larger set than feature."
	
	"{OCL} result = (member->select(oclIsKindOf(Feature))->collect(oclAsType(Feature))->asSet())"
	
	self notYetImplemented

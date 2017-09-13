operations - stubs
maySpecializeTypeStub
	"The query maySpecializeType() determines whether this classifier may have a generalization relationship to classifiers of the specified type. By default a classifier may specialize classifiers of the same or a more general type. It is intended to be redefined by classifiers that have different specialization constraints."
	
	"{OCL} result = (self.oclIsKindOf(c.oclType()))"
	
	self notYetImplemented

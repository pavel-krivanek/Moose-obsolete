operations - stubs
subsettingContextStub
	"The query subsettingContext() gives the context for subsetting a Property. It consists, in the case of an attribute, of the corresponding Classifier, and in the case of an association end, all of the Classifiers at the other ends."
	
	"{OCL} result = (if association <> null
then association.memberEnd->excluding(self)->collect(type)->asSet()
else 
  if classifier<>null
  then classifier->asSet()
  else Set{} 
  endif
endif)"
	
	self notYetImplemented

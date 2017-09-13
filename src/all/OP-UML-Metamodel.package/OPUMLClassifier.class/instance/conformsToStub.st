operations - stubs
conformsToStub
	"The query conformsTo() gives true for a Classifier that defines a type that conforms to another. This is used, for example, in the specification of signature conformance for operations."
	
	"{OCL} result = (if other.oclIsKindOf(Classifier) then
  let otherClassifier : Classifier = other.oclAsType(Classifier) in
    self = otherClassifier or allParents()->includes(otherClassifier)
else
  false
endif)"
	
	self notYetImplemented

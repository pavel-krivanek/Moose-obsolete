operations - stubs
oppositeStub
	"If this property is a memberEnd of a binary association, then opposite gives the other end."
	
	"{OCL} result = (if association <> null and association.memberEnd->size() = 2
then
    association.memberEnd->any(e | e <> self)
else
    null
endif)"
	
	self notYetImplemented

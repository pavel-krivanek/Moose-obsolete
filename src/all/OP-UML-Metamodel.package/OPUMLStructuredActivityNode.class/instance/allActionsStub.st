operations - stubs
allActionsStub
	"Returns this StructuredActivityNode and all Actions contained in it."
	
	"{OCL} result = (node->select(oclIsKindOf(Action)).oclAsType(Action).allActions()->including(self)->asSet())"
	
	self notYetImplemented

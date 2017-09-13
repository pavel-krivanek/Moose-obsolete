operations - stubs
allRolesStub
	"All features of type ConnectableElement, equivalent to all direct and inherited roles."
	
	"{OCL} result = (allFeatures()->select(oclIsKindOf(ConnectableElement))->collect(oclAsType(ConnectableElement))->asSet())"
	
	self notYetImplemented

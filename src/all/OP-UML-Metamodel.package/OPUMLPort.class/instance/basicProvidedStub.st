operations - stubs
basicProvidedStub
	"The union of the sets of Interfaces realized by the type of the Port and its supertypes, or directly the type of the Port if the Port is typed by an Interface."
	
	"{OCL} result = (if type.oclIsKindOf(Interface) 
then type.oclAsType(Interface)->asSet() 
else type.oclAsType(Classifier).allRealizedInterfaces() 
endif)"
	
	self notYetImplemented

operations - stubs
metaclassEndStub
	"The query metaclassEnd() returns the Property that is typed by a metaclass (as opposed to a stereotype)."
	
	"{OCL} result = (memberEnd->reject(p | ownedEnd->includes(p.oclAsType(ExtensionEnd)))->any(true))"
	
	self notYetImplemented
